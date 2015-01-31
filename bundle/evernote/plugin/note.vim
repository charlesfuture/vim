if !has('python')
    echo "Error: Required vim compiled with +python"
    finish
endif

if ! exists('g:note_cache_dir')
    let g:note_cache_dir = simplify(expand('<sfile>:p:h') .'/..')
endif

function! MakeNote(title, content, cache)
python << EOF

import vim
import os
from evernote.api.client import Store
import evernote.edam.notestore.NoteStore as NoteStore
from evernote.edam.notestore.ttypes import NoteFilter
from evernote.edam.type.ttypes import Note, Notebook
import evernote.edam.error.ttypes as Errors

class Evernote():

    def __init__(self):
        self.authToken = "S=s10:U=130ae6:E=14da0123518:C=1464861091b:P=1cd:A=en-devtoken:V=2:H=9e43e5cb89a4b32b3450db64a5211ef0"
        self.noteStoreUrl = "https://app.yinxiang.com/shard/s10/notestore"
        self.noteStore = Store(self.authToken, NoteStore.Client, self.noteStoreUrl)
        self.memoGuid = '483065ca-ccc0-4bea-a62f-78c4d3fb5741'

    def getUrls(self, delete=True):
        authToken = self.authToken
        noteStore = self.noteStore
        weixin_guid = "c8c3b463-ba42-4cf5-ac69-5ee28c446460"
        urls = []
        for note in noteStore.findNotes(authToken, NoteFilter(notebookGuid=weixin_guid), 0, 100).notes:
            urls.append(note.attributes.sourceURL)
            if delete:
                noteStore.deleteNote(authToken, note.guid)
        return urls

    def getNoteGuid(self, title):
        for note in self.noteStore.findNotes(self.authToken, NoteFilter(notebookGuid=self.memoGuid), 0, 100).notes:
            if note.title == title:
                return note.guid

    def makeNote(self, noteTitle, noteBody):
        nBody = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
        nBody += "<!DOCTYPE en-note SYSTEM \"http://xml.evernote.com/pub/enml2.dtd\">"
        nBody += "<en-note>%s</en-note>" % noteBody

        noteGuid = self.getNoteGuid(noteTitle)
        try:
            if noteGuid:
                newNote = Note(title=noteTitle, content=nBody, notebookGuid=self.memoGuid, guid=noteGuid)
                self.noteStore.updateNote(self.authToken, newNote)
            else:
                newNote = Note(title=noteTitle, content=nBody, notebookGuid=self.memoGuid)
                self.noteStore.createNote(self.authToken, newNote)
        except Errors.EDAMUserException as e:
            return e.parameter
        except Errors.EDAMSystemException as e:
            return e.message
        except Errors.EDAMNotFoundException as e:
            return e.message
        else:
            return "make note successful"


    def getNoteBook(self, name):
        authToken = self.authToken
        noteStore = self.noteStore
        result = noteStore.listNotebooks(authToken)
        for res in result:
            if res.name == name:
                return res.guid
        noteBook = Notebook()
        noteBook.name = name
        res = noteStore.createNotebook(authToken, noteBook)
        return res.guid

note = Evernote()
title = vim.eval("a:title")
content = vim.eval("a:content")
cache = vim.eval("a:cache")
try:
    msg = note.makeNote(title, content)
    vim.command('echohl WarningMsg | echo "%s: %s" | echohl None' % (title, msg))
    if int(cache):
        vim.os.remove(title)
except:
    vim.command('echohl WarningMsg | echo "%s: make note failed" | echohl None' % title)

EOF
endfunction


function! Note()
python << EOF

import tornado.escape
import vim

buf = vim.current.buffer
vim.command('let title=expand("%:t")')
name = vim.eval("title")
content = "<pre><code>%s</code></pre>" % tornado.escape.xhtml_escape("\n".join(buf))
vim.command("call MakeNote('%s', '%s', 0)"%(name, content))

EOF
endfunction


function! SaveNote()
python << EOF

import vim
buf = vim.current.buffer
vim.command('let title=expand("%:t")')
name = vim.eval("title")
path = vim.eval("g:note_cache_dir")
vim.chdir(path)
with open(name, "w") as fp:
    fp.write("\n".join(buf))

vim.command('echohl WarningMsg | echo "save successful" | echohl None')

EOF
endfunction

function! PubNote()
python << EOF

import tornado.escape
import vim
import os

path = vim.eval("g:note_cache_dir")
vim.chdir(path)
for name in os.listdir("."):
    with open(name, "r") as fp:
        content = "<pre><code>%s</code></pre>" % tornado.escape.xhtml_escape(fp.read())
        vim.command("call MakeNote('%s', '%s', 1)"%(name, content))

EOF
endfunction
