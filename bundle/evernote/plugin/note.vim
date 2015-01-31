function! Note()
python << EOF
import vim
import note
import tornado.escape
buf = vim.current.buffer
vim.command('let title=expand("%:t")')
name = vim.eval("title")
content = "<pre><code>%s</code></pre>" % tornado.escape.xhtml_escape("\n".join(buf))
#note.Evernote().makeNote(name, content)
#print "hello"
vim.command('echohl WarningMsg | echo "Successful in updating the copy right." | echohl None')
EOF
endfunc

