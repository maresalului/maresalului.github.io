function! MacroCorrigeAside()
 let @a='go/<aside class=.sobre.V/<\/aside>:s/<br>\n/<\/p>\r<p class="info">/ge | :''<,''>s/span>/p>/ge | :''<,''>s/span class/p class/ge | :''<,''>s/<b>\(<\/p>\n<p class="info">\)/\1<b>/ge | :''<,''>s/<br><\/p>/<\/p>/ge | :''<,''>s/<p class="info"><\/aside>/<\/aside>/ge'
 norm! @a
endfunction

function! MacroLimpaAntes()
 execute "normal! gov/<h1s<"
endfunction

function! MacroLimpaAntesCapitulo()
 execute "normal! gov/<h[0-9] classs<"
endfunction

function! MacroCopiaTitulo()
execute "normal! go/<h1/>€krv/<€kly?<\/title€klp"
endfunction

function! MacroCopiaTituloCapitulo()
execute "normal! go/<h4/>€krv/<€kly?<\/title€klp"
endfunction

function! MacroCopiaTituloBiografia()
execute "normal! go/<h1/>€krv/<€kly?<\/h3€klp"
endfunction

function! MacroInclusaoTabela()
let @y='G$?<\/table:s/<\/table>/&\r\r/G$?<\/tableV?<table:s/\n//g€khV:s/ //gV:s/<[^>]*>//gV:s/\([A-z]\)\([0-9]\)/\1: \2/gV:s/.*/<div class="datas">&<\/div>/'
norm! @y
endfunction

function! MacroMoveTabela()
let @t='go/<tableV/<\/tabled?<mainp'
norm! @t
endfunction

function! MacroEscapar()
execute "normal! "
endfunction

function! BaixaH4()
let @l='go/<h4€kdVG:s/h4/h5/g'
norm! @l
endfunction

function! MacroNivelaEm4()
let @n='goV/<.header>:s/"\.\.\//"..\/..\//ge'
norm! @n
endfunction
