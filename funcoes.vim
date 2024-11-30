scriptencoding utf-8

"	Plugins
call plug#begin()

" List your plugins here
Plug 'skywind3000/vim-quickui'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'

call plug#end()

"	Pessoal

set linebreak
hi FoldColumn ctermbg=none
highlight EndOfBuffer ctermfg=16
set spelllang=pt-BR
set laststatus=1
au FileType htm,html,htmldjango setlocal indentexpr=

iabbrev linkexterno class="link_ext" target="_blank"
cabbrev linkexterno href="https://" class="link_ext" target="_blank"

map <F1> :call MANDA()<cr>
map m<F1> :call MANDAcap()<cr>
map <F2> @t
map <F3> @a
map <F4> :Encapar<cr>
map <F5> :call quickui#listbox#open(content, opts)<cr>
map <F6> :call IgnorarH3()<cr>
map m<F6> :%s/<h3>.*<\/header><\/h3>/\r<\/header>/<cr>
map <F8> ysiw<
noremap <F10> :call Notar()<CR>
noremap <F11> :NERDTreeToggle<CR>
map <F12> :call quickui#menu#open()<cr>
map m<F12> :source ~/.config/nvim/nvimrc<cr>

map ma :call ArrumaGeral()<cr>
map md :call Descodificar()<cr>

map ú :call CorrigeUltimaAlteracao()<cr>
map Ú :call CorrigeUltimaAlteracao()<cr>
map Q :call Quotar()<cr>
map F :call Figurar()<cr>
map ś :%s/<br>\n<span class="H1reduzido">\(.*\)<\/span><\/h1>/<\/h1>\r<p class="subtitulo">\1<\/p>/<cr>
map ń :call NavegaSemCap()<cr>
map ç :%s/<p class="toplink"><a href=".*\.htm">continua.*<\/a><\/p>//c<cr>
map é :call EspecialEspecifico()<cr>


"""					       '''					^__^
""						''					(oo)\_______
"				MARXISTS	 '					(__)\       )\/\
""						''					    ||----w |
"""					       '''					    ||     ||


command InserirBase call Modelar()

command Notar :call Notar()

command Descodificar :call Descodificar()


""			''
"		Funções	 '	🪄
""			''

function! Notar()
  let curline = getline('.')
  let col = col('.')
  call inputsave()
  let numero = input('Digite o número da nota: ')
  call inputrestore()
  let novo = '<a href="#n' . numero . '" id="r' . numero . '"><sup>(' . numero . ')</sup></a>'
  let antes = strpart(curline, 0, col)
  let depois = strpart(curline, col)
  call setline('.', antes . novo . depois)
  if numero ==# '1'
   execute "normal! G"
   let procurar = '<hr>'
   let referencia = '@linhanova<p class="note"><b>Notas de rodapé:</b></p>@linhanova<p class="note" id="n' . numero . '">(' . numero . ') Nota (<a href="#r' . numero . '">retornar ao texto</a>)</p>'
  else
    let procurar = 'retornar ao texto'
    let referencia = '<p class="note" id="n' . numero . '">(' . numero . ') Nota (<a href="#r' . numero . '">retornar ao texto</a>)</p>'
  endif
  let lnum = search(procurar, 'b')
  if lnum > 0
    call append(lnum, referencia)
  endif
  :%s/@linhanova/\r/ge
endfunction

function! MudaTitulos()
 let h1_titulo = input('Insira o título: ')
 let h2_autor = input('Insira a autoria: ')
 let h3_data = input('Insira a data do texto: ')

 execute '%s/<title><\/title>/<title>' . h1_titulo . '<\/title>/'
 execute '%s/index.htm">Nome do autor<\/a>/index.htm">' . h2_autor . '<\/a>/'
 execute '%s/<h1><\/h1>/<h1>' . h1_titulo . '<\/h1>/'
 execute '%s/<h2><\/h2>/<h2>' . h2_autor . '<\/h2>/'
 execute '%s/<h3><\/h3>/<h3>' . h3_data . '<\/h3>/'
endfunction

function! Modelar()
 execute '0put! =repeat(\"\n\",38)'
 execute 'normal 1Gi<!DOCTYPE html>'
 execute 'normal 2Gi<html lang="pt">'
 execute 'normal 3Gi<head>'
 execute 'normal 4Gi<meta charset="utf-8">'
 execute 'normal 5Gi<meta name="viewport" content="width=device-width, initial-scale=1">'
 execute 'normal 6Gi<meta name="keywords" content="Textos, Obras, Arquivo Marxista na Internet, Marxists">'
 execute 'normal 7Gi<title></title>'
 execute 'normal 8Gi<link href="../../../css/texto.css" rel="stylesheet" type="text/css">'
 execute 'normal 9Gi</head>'
 execute 'normal 11Gi<body>'
 execute 'normal 13Gi<nav>'
 execute 'normal 14Gi<a href="../../../index.htm" id="topp">MIA</a> &gt; '
 execute 'normal 15Gi<a href="../../../biblioteca.htm">Biblioteca</a> &gt; '
 execute 'normal 16Gi<a href="../../index.htm">Nome do autor</a> &gt; '
 execute 'normal 17Gi<a href="../../../admin/novidades.htm">Novidades</a> '
 execute 'normal 18Gi</nav>'
 execute 'normal 20Gi<header>'
 execute 'normal 22Gi<h1></h1>'
 execute 'normal 23Gi<p class="subtitulo"></p>'
 execute 'normal 24Gi<h2></h2>'
 execute 'normal 25Gi<h3></h3>'
 execute 'normal 27Gi<hr>'
 execute 'normal 28Gi<p class="info"><b>Primeira publicação:</b> <i>Periódico</i>, subtítulo se houver, n.º 23, ano XI, data de 1917.</p>'
 execute 'normal 29Gi<p class="info"><b>Fonte:</b> .</p>'
 execute 'normal 30Gi<p class="info"><b>Tradução:</b> .</p>'
 execute 'normal 31Gi<p class="info"><b>HTML:</b> <a href="../../../admin/correio.htm" target="_blank">Lucas Schweppenstette</a>.</p>'
 execute 'normal 32Gi<p class="info"><b>Direitos de reprodução:</b> <img src="../../../img/licenca.png" class="licenca" alt="Licença" width="80" height="15"> <a href="https://creativecommons.org/licenses/by-sa/4.0/deed.pt-br">Creative Commons BY-SA 4.0</a>.</p>'
 execute 'normal 33Gi<hr>'
 execute 'normal 35Gi</header>'
 execute 'normal 37Gi<main>'
 call Finalizar()
 execute 'normal 39G'
endfunction

function! Descodificar()
 :%s/&ccedil;/ç/ge
 :%s/&Aacute;/Á/ge
 :%s/&Eacute;/É/ge
 :%s/&Iacute;/Í/ge
 :%s/&Oacute;/Ó/ge
 :%s/&Uacute;/Ú/ge
 :%s/&aacute;/á/ge
 :%s/&eacute;/é/ge
 :%s/&iacute;/í/ge
 :%s/&oacute;/ó/ge
 :%s/&uacute;/ú/ge
 :%s/&Acirc;/Â/ge
 :%s/&Ecirc;/Ê/ge
 :%s/&Ocirc;/Ô/ge
 :%s/&acirc;/â/ge
 :%s/&ecirc;/ê/ge
 :%s/&ocirc;/ô/ge
 :%s/&Agrave;/À/ge
 :%s/&agrave;/à/ge
 :%s/&egrave;/è/ge
 :%s/&Egrave;/È/ge
 :%s/&Uuml;/Ü/ge
 :%s/&uuml;/ü/ge
 :%s/&Ccedil;/Ç/ge
 :%s/&Atilde;/Ã/ge
 :%s/&Otilde;/Õ/ge
 :%s/&otilde;/õ/ge
 :%s/&atilde;/ã/ge
 :%s/&auml;/ä/ge
 :%s/&laquo;/«/ge
 :%s/&raquo;/»/ge
 :%s/&ldquo;/“/ge
 :%s/&rdquo;/”/ge
 :%s/&mdash;/—/ge
 :%s/&ndash;/–/ge
 :%s/&ordf;/ª/ge
 :%s/&ordm;/º/ge
 :%s/&quot;/"/ge
 :%s/&lsquo;/‘/ge
 :%s/&rsquo;/’/ge
 :%s/\n\n\n/\r\r/ge
 :%s/$//ge
endfunction

function! Finalizar()
 execute 'normal G$'
 execute 'normal a'
 execute 'normal a'
 execute 'normal i</main>'
 execute 'normal i'
 execute 'normal i<footer>'
 execute 'normal i'
 execute 'normal i<p class="link"><a href="#topp">Início da página</a></p>'
 execute 'normal i'
 execute 'normal i<hr>'
 execute 'normal i'
 execute 'normal i<div class="datas">Inclusão: @marxistsDATA</div>'
 execute 'normal i'
 execute 'normal i</footer>'
 execute 'normal i'
 execute 'normal i</body>'
 execute 'normal i</html>'
 %s/@marxistsDATA/\=strftime("%d\/%m\/%Y")/ge
endfunction

function! PadronizarPandoc()
 " Corrige as âncoras
 %s/#fn/#n/g
 %s/ class="footnote-ref" id="fnref/ id="r/g
 %s/ role="doc-noteref"//g
 %s/"><sup>/"><sup>(/g
 %s/<\/sup><\/a>/)<\/sup><\/a>/g

 " Corrige as referências
 %s/footnotes footnotes-end-of-document/footnotes/ge
 %s/<aside id="footnotes" class="footnotes" role="doc-endnotes">/<section class="footnotes" role="doc-endnotes">/g
 %s/<section class="footnotes" role="doc-endnotes">\n<hr \/>\n<ol>/<p class="note"><b>Notas de rodapé:<\/b><\/p>/g
 %s/<li id="fn[0-9]"><p>/&<REMOVEP>/g
 %s/<li id="fn[0-9][0-9]"><p>/&<REMOVEP>/ge
 %s/<li id="fn[0-9][0-9][0-9]"><p>/&<REMOVEP>/ge
 %s/<p><REMOVEP>//g
 %s/<li id="fn/<p class="note" id="n/g
 %s/<a href="#nref/ (<a href="#r/g
 %s/ class="footnote-back" role="doc-backlink">.<\/a><\/p><\/li>/>retornar ao texto<\/a>)<\/p>/g
 %s/<\/ol>\n<\/aside>/<\/ol>\r<\/section>/g
 %s/<\/ol>\n<\/section>//g

 " Numera as referências
 %s/\(id="n\)\([0-9]\+\)\(">\)/\1\2\3(\2) /

 " Procura parágrafos não reconhecidos
 g/<p class="note"><b>Nota/.,$ s/<p>/<p class="note">/g
endfunction

function! ArrumaGeral()
 %s/\/>/>/ge  
 %s/  >/>/ge  
 %s/" >/">/ge  
 %s/<</</ge  
 %s/>>/>/ge  
 %s/Ultima atua/Última atua/ge
 %s/Última atualização: ..\/..\/..../Última atualização: @marxistsDATA/ge
 %s/Última altera..o: ..\/..\/..../Última atualização: @marxistsDATA/ge
 %s/^<td/ <td/ge  
 %s/^div class..datas/<div class=\"datas/ge
 %s/<\/style><\/head>/<\/head>/ge
 %s/"linha-direita/"direita/ge
 %s/"linha-centralizada/"centralizado/ge
 %s/"linha-esquerda/"esquerda/ge
 %s/"linha-justificada/"justificada/ge
 %s/@marxistsDATA/\=strftime("%d\/%m\/%Y")/ge
 %s/strong>/b>/ge
 %s/em>/i>/ge
 %s/<h\([0-9]\) align="center"/<h\1/ge
 %s/<h\([0-9]\) align="left"/<h\1/ge
 %s/<p align="left"/<p/ge
 %s/<p class="titulo-cima-linha">. . .<\/p>/<hr class="estrelavermelha">/ge
 %s/-&nbsp;/- /ge
 %s/&nbsp;-/ -/ge
 %s/ &nbsp;/ /ge
 %s/&nbsp; / /ge
 %s/&nbsp;/ /ge
 %s/<\/b> <b>/ /ge
 %s/<span class="link"><a href="#topp">Início da página<\/a><\/span>/<p class="link"><a href="#topp">Início da página<\/a><\/p>/ge
 %s/Inclusão:\([0-9]\)/Inclusão: \1/e
 %s/<hr size="." noshade="noshade" class="infobot"/<hr>/ge
 %s/<p align="center" class="titulo-capitulo">★ ★ ★<\/p>/<hr class="estrelavermelha">/ge
 %s/<p class="titulo-capitulo">★ ★ ★<\/p>/<hr class="estrelavermelha">/ge
 %s/<p class="titulo-capitulo">★★★<\/p>/<hr class="estrelavermelha">/ge
 %s/<p class="titulo-capitulo style1">★ ★ ★<\/p>/<hr class="estrelavermelha">/ge
 %s/<h4>\* \* \*<\/h4>/<hr class="estrelavermelha">/ge
 %s/<p class="estrelavermelha">★★★<\/p>/<hr class="estrelavermelha">/ge
 %s/<p class="estrelavermelha">★ ★ ★<\/p>/<hr class="estrelavermelha">/ge
 %s/<br >/<br>/ge
 %s/<style type="text\/css">\n<!--.*\n.*\n-->\n<\/style>\n//ge
 %s/nº\./n.º/ge
 %s/Inclusão: \([0-9][0-9]\)\([0-9][0-9]\)\/\([0-9][0-9][0-9][0-9]\)/Inclusão: \1\/\2\/\3/ge
 %s/p class="date"/p class="direita"/ge
 %s/<p class="centralizado.*>⁂<\/p>/<hr class="estrelavermelha">/ge
 %s/<p class="estrelavermelha"><b>★ ★ ★<\/b><\/p>/<hr class="estrelavermelha">/ge
 %s/<h[3-6]>★ ★ ★<\/h[3-6]>/<hr class="estrelavermelha">/ge
endfunction

function! Capitular()
 execute '0put! =repeat(\"\n\",32)'
 execute 'normal 1Gi<!DOCTYPE html>'
 execute 'normal 2Gi<html lang="pt">'
 execute 'normal 3Gi<head>'
 execute 'normal 4Gi<meta charset="utf-8">'
 execute 'normal 5Gi<meta name="viewport" content="width=device-width, initial-scale=1">'
 execute 'normal 6Gi<meta name="keywords" content="Textos, Obras, Arquivo Marxista na Internet, Marxists">'
 execute 'normal 7Gi<title></title>'
 execute 'normal 8Gi<link href="../../../css/texto.css" rel="stylesheet" type="text/css">'
 execute 'normal 9Gi</head>'
 execute 'normal 11Gi<body class="capitulo">'
 execute 'normal 13Gi<nav>'
 execute 'normal 14Gi<a href="../../../index.htm" id="topp">MIA</a> &gt; '
 execute 'normal 15Gi<a href="../../../biblioteca.htm">Biblioteca</a> &gt; '
 execute 'normal 16Gi<a href="../../index.htm">Nome do autor</a> &gt; '
 execute 'normal 17Gi<a href="../../../admin/novidades.htm">Novidades</a> '
 execute 'normal 18Gi</nav>'
 execute 'normal 20Gi<header>'
 execute 'normal 22Gi<h1></h1>'
 execute 'normal 23Gi<h2></h2>'
 execute 'normal 25Gi<hr>'
 execute 'normal 26Gi<h4></h4>'
 execute 'normal 27Gi<hr>'
 execute 'normal 29Gi</header>'
 execute 'normal 31Gi<main>'
 call Finalizar()
 %s/<footer>/&\r\r<nav class="interna">\r<a href="capXX.htm" class="anterior">Anterior<\/a>\r<a href="index.htm" class="ao-meio">Índice<\/a>\r<a href="capYY.htm" class="proximo">Próximo<\/a>\r<\/nav>/ge
 execute 'normal 33G'
endfunction

function! DetectarTitulo()
 execute 'normal 22G'
 read !grep -oP '(?<=<h1>).*(?=<\/h1)' index.htm
 execute 'normal 22G'
 s/<\/h1>\n//
 s/$/<\/h1>/

 execute 'normal 23G'
 read !grep -oP '(?<=<h2>).*(?=<\/h2)' index.htm
 execute 'normal 23G'
 s/<\/h2>\n//
 s/$/<\/h2>/

 execute 'normal 16G'
 read !grep -oP '(?<=<h2>).*(?=<\/h2)' index.htm
 execute 'normal 16G'
 s/Nome do autor<.a> .gt. \n//
 s/$/<\/a>/
endfunction

function! DetectarCapitulo()
 let nomedoarquivo = expand('%:t')

  if nomedoarquivo =~ '\d'
   ?capXX
   read !ls % | grep --only-matching "[0-9][0-9]"
   ?capXX
   s/XX.htm" class="anterior">Anterior<\/a>\n//
   execute 'normal '
   s/$/.htm" class="anterior">Anterior<\/a>/
  
   ?capYY
   read !ls % | grep --only-matching "[0-9][0-9]"
   ?capYY
   s/YY.htm" class="proximo">Próximo<\/a>\n//
   execute 'normal '
   s/$/.htm" class="proximo">Próximo<\/a>/
  else
   echo "O nome do arquivo não contém números."
  endif
endfunction

function! PrimeiroCapitulo()
 %s/cap...htm" class="anterior">Anterior<.a>\n<a href="index.htm" class="ao-meio/index.htm" class="anterior/
endfunction

function! UltimoCapitulo()
 %s/ class="ao-meio">Índice<.a>\n<a href="cap...htm" class="proximo">Próximo/ class="proximo">Índice/
endfunction


"""""""""""""""""'''''''''''''''''
""				''
"		Experimental	 '
""				''
"""""""""""""""""'''''''''''''''''




function! Tidy()
 execute 'normal G$a<REMOVEtidy>'
 read !tidy --show-errors 0 %
 1,/<REMOVEtidy>/d
 %s/<meta name="generator" content="HTML Tidy[^>]*>\n//
endfunction


function! PegaH1()
 let l:h1_count = len(getbufline('%', 1, '$')->filter({_, line -> line =~ '<h1'}))
 if l:h1_count > 1
  echohl WarningMsg
  echo "⚠️  Há " . l:h1_count . " ocorrências da tag <h1>."
  echohl None
 endif
endfunction

function! PegaH2()
 let l:h2_count = len(getbufline('%', 1, '$')->filter({_, line -> line =~ '<h2'}))
 if l:h2_count > 1
  echohl WarningMsg
  echo "⚠️  Há " . l:h2_count . " ocorrências da tag <h2>."
  echohl None
 endif
endfunction

function! PegaH3()
 let l:h3_count = len(getbufline('%', 1, '$')->filter({_, line -> line =~ '<h3'}))
 if l:h3_count > 1
  echohl WarningMsg
  echo "⚠️  Há " . l:h3_count . " ocorrências da tag <h3>."
  echohl None
 endif
endfunction

function! PegaStyle()
 let l:has_style = !empty(getbufline('%', 1, '$')->filter({_, line -> line =~ '<style'}))
 if l:has_style
  echohl WarningMsg
  echo "🚨 Há <style> próprio."
  echohl None
 endif
endfunction

function! PegaUnicode()
 let l:has_utf = !empty(getbufline('%', 1, '$')->filter({_, line -> line =~ 'utf-8'}))
 if !l:has_utf
  echohl ErrorMsg
  echo "🚨 O documento não está em UTF-8."
  echohl None
 endif
endfunction

function! PegaTAG()
 let l:temTagMaius = !empty(getbufline('%', 1, '$')->filter({_, line -> line =~ '<[A-Z]'}))
 if l:temTagMaius
  echohl WarningMsg
  echo "🚨 Tags maiúsculas foram detectadas."
  echohl None
 endif
endfunction

autocmd BufReadPost *.htm call PegaUnicode()
autocmd BufReadPost *.htm call PegaTAG()
autocmd BufReadPost *.htm call PegaH1()
autocmd BufReadPost *.htm call PegaH2()
autocmd BufReadPost *.htm call PegaH3()
autocmd BufReadPost *.htm call PegaStyle()

function! AnalisaErros()
 call PegaUnicode()
 call PegaTAG()
 call PegaH1()
 call PegaH2()
 call PegaH3()
 call PegaStyle()
endfunction

function! AprovaDocumento()
 let l:nivel_tres = !empty(getbufline('%', 1, '$')->filter({_, line -> line =~ 'href="../../../css/texto'}))
 let l:tem_tag_maiuscula = !empty(getbufline('%', 1, '$')->filter({_, line -> line =~ '<[A-Z]'}))
 let l:eh_unicode = !empty(getbufline('%', 1, '$')->filter({_, line -> line =~ 'utf-8'}))
 let l:tem_estilo = !empty(getbufline('%', 1, '$')->filter({_, line -> line =~ '<style'}))
 let l:quantos_h1 = len(getbufline('%', 1, '$')->filter({_, line -> line =~ '<h1'}))
 let l:quantos_h2 = len(getbufline('%', 1, '$')->filter({_, line -> line =~ '<h2'}))
 let l:quantos_h3 = len(getbufline('%', 1, '$')->filter({_, line -> line =~ '<h3'}))
 let l:quantos_hr = len(getbufline('%', 1, '$')->filter({_, line -> line =~ '<hr'}))
 let l:tem_final = len(getbufline('%', 1, '$')->filter({_, line -> line =~ '<p class="link"><a href="#topp">'}))
 let l:ninhos_h1 = '<h1\_.\{-}<[^/].*>\_.\{-}</h1>'
  let l:alinha_h1 = join(getline(1, '$'), "\n")
 let l:subtitulo_ruim = '</h1\_.\{-}<h[^/].*>\_.\{-}<h2'
  let l:alinha_subtitulo = join(getline(1, '$'), "\n")

if !l:tem_tag_maiuscula
 if l:nivel_tres
  if l:eh_unicode 
   if !l:tem_estilo
    if l:quantos_h1 == 1
     if l:quantos_h2 == 1
      if l:quantos_h3 == 1
       if l:quantos_hr >= 3
        if l:tem_final 
         if l:alinha_h1 !~ l:ninhos_h1
          if l:alinha_subtitulo !~ l:subtitulo_ruim

           echohl WarningMsg
           echo "✅ Documento aprovado"
           echohl None
	   call Converter()

          else
           echohl ErrorMsg
           echo "Subtítulo mal formatado"
           echohl None
          endif
         else
          echohl ErrorMsg
          echo "Há elementos aninhados dentro do <h1>"
          echohl None
         endif
 	else
          echohl ErrorMsg
          echo "Não possui âncora do cabeçalho"
          echohl None
 	endif
       else
        echohl ErrorMsg
        echo "Número inadequado de tags <hr>"
        echohl None
       endif
      else
       echohl ErrorMsg
       echo "Número inadequado de tags <h3>"
       echohl None
      endif
     else
      echohl ErrorMsg
      echo "Número inadequado de tags <h2>"
      echohl None
     endif
    else
     echohl ErrorMsg
     echo "Número inadequado de tags <h1>"
     echohl None
    endif
   else
    echohl ErrorMsg
    echo "O documento tem estilo próprio"
    echohl None
   endif
  else
    echohl ErrorMsg
    echo "O documento não está em UTF-8"
    echohl None
  endif
 else
  echohl ErrorMsg
  echo "O documento não está no nível três"
  echohl None
 endif
else
 echohl ErrorMsg
 echo "Há tags com maiúscula"
 echohl None
endif
endfunction

function! Converter()
  %s/<header>//ge
  call MacroLimpaAntes()
  execute '0put! =repeat(\"\n\",20)'
  execute 'normal 1Gi<!DOCTYPE html>'
  execute 'normal 2Gi<html lang="pt">'
  execute 'normal 3Gi<head>'
  execute 'normal 4Gi<meta charset="utf-8">'
  execute 'normal 5Gi<meta name="viewport" content="width=device-width, initial-scale=1">'
  execute 'normal 6Gi<meta name="keywords" content="Textos, Obras, Arquivo Marxista na Internet, Marxists">'
  execute 'normal 7Gi<title></title>'
  execute 'normal 8Gi<link href="../../../css/textos.css" rel="stylesheet" type="text/css">'
  execute 'normal 9Gi</head>'
  execute 'normal 11Gi<body>'
  execute 'normal 13Gi<nav>'
  execute 'normal 14Gi<a href="../../../index.htm" id="topp"><img src="../../../img/mia.svg" class="logo" alt="Arquivo Marxista" width="75" height="20"></a>'
  execute 'normal 15Gi<a href="../../../biblioteca.htm" title="Biblioteca" id="li-bi"></a>'
  execute 'normal 16Gi<a href="../../../admin/novidades.htm" title="Novidades" id="li-no"></a>'
  execute 'normal 17Gi</nav>'
  execute 'normal 19Gi<header>'
  execute 'normal 21G'

  " assegura inexistência de tags conflitantes
  %s/<\/header>//ge
  %s/<main>//ge
  %s/<\/main>//ge
  %s/<footer>//ge
  %s/<\/footer>//ge
  %s/<hr >/<hr>/ge
 
  " substitui os elementos chave
  %s/<h2/<a href="..\/..\/index.htm">\r<img src="..\/..\/img\/avatar.webp" alt="" width="42" height="56">\r&/
  %s/<\/h2>/&<\/a>/
  call feedkeys("yq") | %s/<hr\%( class="\%(transparente\|estrelavermelha\)"\)\@!.\{-}>/<\/header>\r\r<main>\r\r<aside class="sobre">/gc
  call feedkeys("yq") | %s/<hr\%( class="\%(transparente\|estrelavermelha\)"\)\@!.\{-}>/<\/aside>\r/gc
  %s/<p class="link"><a href="#topp">In.\{-}p>/<\/main>\r\r<footer>/g
  g/<footer/.,$ s/<hr>//g
 
  %s/<\/body>/<!-- conversão automática em @marxistsDATA -->\r\r<\/footer>\r&/
  %s/@marxistsDATA/\=strftime("%d\/%m\/%Y")/ge

  call MacroCopiaTitulo()
  call Desespacar()
  call MacroEscapar()
endfunction

function! MANDA()
 call Tidy()
 call Descodificar()
 call ArrumaGeral()
 call AprovaDocumento()
endfunction

function! Desespacar()
  %s/\(\n\s*\)\{2,}/\r\r/g
 %s/^\t\+//ge
endfunction

function! RemoveLinkAutor()
 %s/<a href="..\/..\/index.htm">\n<img src="..\/..\/img\/avatar.webp" alt="" width="42" height="56">\n<h2/<h2/
 %s/\/h2><\/a>/\/h2>/
endfunction

function! IgnorarH3()
 %s/<\/h2>/<\/h2>i<h3>/
 call AprovaDocumento()
 %s/<\/a>i<h3>/<\/a>/
endfunction

command Indice :%s/<body>/<body class="indice">/
command Encapar :call Encapar()

function! Encapar()
%s/ \(.space="10"\) border="."/ \1/e
%s/ .space="10" .space="10" align="right"/ class="capadelivro"/c
endfunction

function! Contrib(arg)
  execute 'normal G$?<div class="datas">Inc0i'
  execute 'normal k'
  execute 'normal a<div class="colab">'
  execute 'normal a<p>Este texto foi uma contribuição do</p>'
  execute 'normal a<a href="@mrxCONTRIBlink" target="_blank">'
  execute 'normal a <img src="@mrxCONTRIBimg" class="colab" alt="@mrxCONTRIBalt" width="@mrxCONTRIBwid" height="@mrxCONTRIBhei">'
  execute 'normal a</a></div>'

  if a:arg == "averdade"
   :%s/@mrxCONTRIBlink/https:\/\/averdade.org.br\//
   :%s/@mrxCONTRIBimg/..\/..\/..\/img\/colaboradores\/averdade.jpg/
   :%s/@mrxCONTRIBalt/Jornal A Verdade/
   :%s/@mrxCONTRIBwid/834/
   :%s/@mrxCONTRIBhei/209/
  endif

  if a:arg == "bibliotecaanarquista"
   :%s/Este texto foi uma contribuição do<\/p>/Este texto foi uma contribuição da<\/p>/
   :%s/@mrxCONTRIBlink/https:\/\/www.bibliotecaanarquista.org\//
   :%s/@mrxCONTRIBimg/..\/..\/..\/img\/colaboradores\/bibliotecaanarquista.png/
   :%s/@mrxCONTRIBalt/Biblioteca Anarquista/
   :%s/@mrxCONTRIBwid/300/
   :%s/@mrxCONTRIBhei/80/
  endif

  if a:arg == "blogdaboitempo"
   :%s/@mrxCONTRIBlink/https:\/\/blogdaboitempo.com.br\//
   :%s/@mrxCONTRIBimg/..\/..\/..\/img\/colaboradores\/blogdaboitempo.png/
   :%s/@mrxCONTRIBalt/Blog da Boitempo/
   :%s/@mrxCONTRIBwid/990/
   :%s/@mrxCONTRIBhei/190/
  endif

  if a:arg == "cemflores"
   :%s/@mrxCONTRIBlink/https:\/\/cemflores.org\//
   :%s/@mrxCONTRIBimg/..\/..\/..\/img\/colaboradores\/cem-flores.jpg/
   :%s/@mrxCONTRIBalt/Cem Flores/
   :%s/@mrxCONTRIBwid/453/
   :%s/@mrxCONTRIBhei/98/
  endif

  if a:arg == "revistaoutubro"
   :%s/Este texto foi uma contribuição do<\/p>/Este texto foi uma contribuição da<\/p>/
   :%s/@mrxCONTRIBlink/https:\/\/outubrorevista.com.br\//
   :%s/@mrxCONTRIBimg/..\/..\/..\/img\/colaboradores\/revista-outubro.jpg/
   :%s/@mrxCONTRIBalt/Revista Outubro/
   :%s/@mrxCONTRIBwid/400/
   :%s/@mrxCONTRIBhei/93/
  endif

  if a:arg == "traduagindo"
   :%s/@mrxCONTRIBlink/https:\/\/traduagindo.com\//
   :%s/@mrxCONTRIBimg/..\/..\/..\/img\/colaboradores\/traduagindo.png/
   :%s/@mrxCONTRIBalt/TraduAgindo/
   :%s/@mrxCONTRIBwid/1422/
   :%s/@mrxCONTRIBhei/484/
  endif

  if a:arg == "criticamarxista"
   :%s/Este texto foi uma contribuição do<\/p>/Este texto foi uma contribuição da<\/p>/
   :%s/@mrxCONTRIBlink/https:\/\/econtents.bc.unicamp.br\/inpec\/index.php\/cma\/index/
   :%s/@mrxCONTRIBimg/..\/..\/..\/img\/colaboradores\/critica_marxista.jpg/
   :%s/@mrxCONTRIBalt/Revista Crítica Marxista/
   :%s/@mrxCONTRIBwid/202/
   :%s/@mrxCONTRIBhei/110/
  endif

  if a:arg == "fundacaograbois"
   :%s/@mrxCONTRIBlink/https:\/\/grabois.org.br/
   :%s/@mrxCONTRIBimg/..\/..\/..\/img\/colaboradores\/fundacao_grabois.jpg/
   :%s/@mrxCONTRIBalt/Fundação Maurício Grabois/
   :%s/@mrxCONTRIBwid/232/
   :%s/@mrxCONTRIBhei/67/
  endif

  if a:arg == "lavrapalavra"
   :%s/class="colab/& alta/
   :%s/@mrxCONTRIBlink/https:\/\/lavrapalavra.com\//
   :%s/@mrxCONTRIBimg/..\/..\/..\/img\/colaboradores\/logo_lavra_palavra.png/
   :%s/@mrxCONTRIBalt/LavraPalavra/
   :%s/@mrxCONTRIBwid/144/
   :%s/@mrxCONTRIBhei/123/
  endif

  if a:arg == "novacultura"
   :%s/Este texto foi uma contribuição do<\/p>/Este texto foi uma contribuição da<\/p>/
   :%s/@mrxCONTRIBlink/https:\/\/www.novacultura.info\//
   :%s/@mrxCONTRIBimg/..\/..\/..\/img\/colaboradores\/novacultura.png/
   :%s/@mrxCONTRIBalt/Nova Cultura/
   :%s/@mrxCONTRIBwid/250/
   :%s/@mrxCONTRIBhei/133/
  endif

  if a:arg == "pco"
   :%s/@mrxCONTRIBlink/https:\/\/www.pco.org.br\//
   :%s/@mrxCONTRIBimg/..\/..\/..\/img\/colaboradores\/pco.svg/
   :%s/@mrxCONTRIBalt/Partido da Causa Operária/
   :%s/@mrxCONTRIBwid/1424/
   :%s/@mrxCONTRIBhei/659/
  endif

  if a:arg == "overmelho"
   :%s/@mrxCONTRIBlink/https:\/\/vermelho.org.br\//
   :%s/@mrxCONTRIBimg/..\/..\/..\/img\/colaboradores\/o-vermelho.png/
   :%s/@mrxCONTRIBalt/Portal O Vermelho/
   :%s/@mrxCONTRIBwid/349/
   :%s/@mrxCONTRIBhei/115/
  endif
  
  if a:arg == "passapalavra"
   %s/class="colab/& inversivel/
   :%s/@mrxCONTRIBlink/https:\/\/passapalavra.info\//
   :%s/@mrxCONTRIBimg/..\/..\/..\/img\/colaboradores\/passapalavra.png/
   :%s/@mrxCONTRIBalt/Passa Palavra/
   :%s/@mrxCONTRIBwid/544/
   :%s/@mrxCONTRIBhei/179/
  endif

  if a:arg == "Modelo"
   :%s/@mrxCONTRIBlink//
   :%s/@mrxCONTRIBimg//
   :%s/@mrxCONTRIBalt//
   :%s/@mrxCONTRIBwid//
   :%s/@mrxCONTRIBhei//
  endif
  
  call Desespacar()
endfunction

function! Imprensa(arg)
  execute 'normal go/<\/aside>$a'
  execute 'normal j'
  execute 'normal a<a href="@mrxIMPlink"><img src="../../../img/imprensa/@mrxIMPimg" class="imprensa" alt="@mrxIMPalt" width="@mrxIMPwid" height="@mrxIMPhei"></a>'

  if a:arg == "aclasseoperaria"
   %s/class="imprensa/& longo/
   %s/@mrxIMPlink/..\/..\/..\/tematica\/jornais\/classe_operaria\/index.htm/
   %s/@mrxIMPimg/aclasseoperaria.png/
   %s/@mrxIMPalt/A Classe Operária/
   %s/@mrxIMPwid/1542/
   %s/@mrxIMPhei/256/
  endif

  if a:arg == "problemas"
   %s/class="imprensa/& inversivel/
   %s/@mrxIMPlink/..\/..\/..\/tematica\/rev_prob\/capas.htm/
   %s/@mrxIMPimg/problemas.png/
   %s/@mrxIMPalt/Revista Problemas/
   %s/@mrxIMPwid/767/
   %s/@mrxIMPhei/256/
  endif

  if a:arg == "Modelo"
   %s/@mrxIMPlink//
   %s/@mrxIMPimg//
   %s/@mrxIMPalt//
   %s/@mrxIMPwid//
   %s/@mrxIMPhei//
  endif

  call Desespacar()
endfunction


function! NavegarCapitulos()
 %s/<footer>/&\r\r<nav class="interna">\r<a href="capXX.htm" class="anterior">Anterior<\/a>\r<a href="index.htm" class="ao-meio">Índice<\/a>\r<a href="capYY.htm" class="proximo">Próximo<\/a>\r<\/nav>/ge
 call DetectarCapitulo()
endfunction

" cópia

function! AprovaCapitulo()
 let l:nivel_tres = !empty(getbufline('%', 1, '$')->filter({_, line -> line =~ 'href="../../../css/texto'}))
 let l:tem_tag_maiuscula = !empty(getbufline('%', 1, '$')->filter({_, line -> line =~ '<[A-Z]'}))
 let l:eh_unicode = !empty(getbufline('%', 1, '$')->filter({_, line -> line =~ 'utf-8'}))
 let l:tem_estilo = !empty(getbufline('%', 1, '$')->filter({_, line -> line =~ '<style'}))
 let l:quantos_hr = len(getbufline('%', 1, '$')->filter({_, line -> line =~ '<hr'}))
 let l:tem_final = len(getbufline('%', 1, '$')->filter({_, line -> line =~ '<p class="link"><a href="#topp">'}))

if !l:tem_tag_maiuscula
 if l:nivel_tres
  if l:eh_unicode 
   if !l:tem_estilo
       if l:quantos_hr >= 3
        if l:tem_final 

           echohl WarningMsg
           echo "✅ Documento aprovado"
           echohl None
	   call ConverterCapitulo()

 	else
          echohl ErrorMsg
          echo "Não possui âncora do cabeçalho"
          echohl None
 	endif
       else
        echohl ErrorMsg
        echo "Número inadequado de tags <hr>"
        echohl None
       endif
   else
    echohl ErrorMsg
    echo "O documento tem estilo próprio"
    echohl None
   endif
  else
    echohl ErrorMsg
    echo "O documento não está em UTF-8"
    echohl None
  endif
 else
  echohl ErrorMsg
  echo "O documento não está no nível três"
  echohl None
 endif
else
 echohl ErrorMsg
 echo "Há tags com maiúscula"
 echohl None
endif
endfunction

function! ConverterCapitulo()
  %s/<header>//ge
  %s/<\/header>//ge
  %s/<main>//ge
  %s/<\/main>//ge
  %s/<footer>//ge
  %s/<\/footer>//ge
  %s/<hr >/<hr>/ge
  call MacroLimpaAntesCapitulo()
  %s/<h. class="titulo-capitulo">\(.\{-}\)<\/h.>/<h4>\1<\/h4>/g

  execute '0put! =repeat(\"\n\",29)'
  execute 'normal 1Gi<!DOCTYPE html>'
  execute 'normal 2Gi<html lang="pt">'
  execute 'normal 3Gi<head>'
  execute 'normal 4Gi<meta charset="utf-8">'
  execute 'normal 5Gi<meta name="viewport" content="width=device-width, initial-scale=1">'
  execute 'normal 6Gi<meta name="keywords" content="Textos, Obras, Arquivo Marxista na Internet, Marxists">'
  execute 'normal 7Gi<title></title>'
  execute 'normal 8Gi<link href="../../../css/textos.css" rel="stylesheet" type="text/css">'
  execute 'normal 9Gi</head>'
  execute 'normal 11Gi<body class="capitulo">'
  execute 'normal 13Gi<nav>'
  execute 'normal 14Gi<a href="../../../index.htm" id="topp"><img src="../../../img/mia.svg" class="logo" alt="Arquivo Marxista" width="75" height="20"></a>'
  execute 'normal 15Gi<a href="../../../biblioteca.htm" title="Biblioteca" id="li-bi"></a>'
  execute 'normal 16Gi<a href="../../../admin/novidades.htm" title="Novidades" id="li-no"></a>'
  execute 'normal 17Gi</nav>'
  execute 'normal 19Gi<header>'
  execute 'normal 20G'
  execute 'normal 21Gi<h1></h1>'
  execute 'normal 22Gi<a href="../../index.htm">'
  execute 'normal 23Gi<img src="../../img/avatar.webp" alt="" width="42" height="56">'
  execute 'normal 24Gi<h2></h2>'
  execute 'normal 25Gi<h3></h3>'
  execute 'normal 26Gi</header>'
  execute 'normal 28Gi<main>'
  execute 'normal 30G'
 
  call feedkeys("yq") | %s/<hr\%( class="\%(transparente\|estrelavermelha\)"\)\@!.\{-}>//gc
  %s/<p class="link"><a href="#topp">In.\{-}p>/<\/main>\r\r<footer>/g
  g/<footer/.,$ s/<hr>//g
 
 
 execute 'normal 21G'
 read !grep -oP '(?<=<h1>).*(?=<\/h1)' index.htm
 execute 'normal 21G'
 s/<\/h1>\n//
 s/$/<\/h1>/

 execute 'normal 24G'
 read !grep -oP '(?<=<h2>).*(?=<\/h2)' index.htm
 execute 'normal 24G'
 s/<\/h2>\n//
 s/$/<\/h2><\/a>/

 execute 'normal 25G'
 read !grep -oP '(?<=<h3>).*(?=<\/h3)' index.htm
 execute 'normal 25G'
 s/<\/h3>\n//
 s/$/<\/h3>/

  %s/<\/body>/<!-- conversão automática em @marxistsDATA -->\r\r<\/footer>\r&/
  %s/@marxistsDATA/\=strftime("%d\/%m\/%Y")/ge

  %s/href="cap9.htm" class="anterior"/href="cap09.htm" class="anterior"/e
  %s/<p class="toplink"><a href="[0-9][0-9].htm">continua&gt;&gt;&gt;<\/a><\/p>\n//e
  %s/<p><span class="toplink"><a href="[0-9][0-9].htm">continua&gt;&gt;&gt;<\/a><\/span><\/p>\n//e

  call NavegarCapitulos()

  call MacroCopiaTituloCapitulo()
  call Desespacar()
  call MacroEscapar()
endfunction


function! MANDAcap()
 call Tidy()
 call Descodificar()
 call ArrumaGeral()
 call AprovaCapitulo()
endfunction

function! NavegaSemCap()
 %s/href="cap\([0-9][0-9].htm" class="anterior"\)/href="\1/e
 %s/href="cap\([0-9][0-9].htm" class="proximo"\)/href="\1/e
endfunction

function! CorrigeUltimaAlteracao()
 %s/\([0-9]\)Últimaalteração/\1<\/div>\r<div class="datas">Última atualização/ge
 %s/\([0-9]\)Últimaatualização/\1<\/div>\r<div class="datas">Última atualização/ge
endfunction!

function! Quotar()
 :s/<p class="quote.">/<p>/e
 :s/^/<blockquote>\r/
 :s/$/\r<\/blockquote>/
endfunction

function! Figurar()
 :s/^/<figure class="meio">\r/
 :s/$/\r<\/figure>/
endfunction

function! DoisAutores()
 execute 'normal go/<h1/<a '
 :s/<a href="..\/..\/index.htm">/\r<img src="..\/..\/img\/avatar.webp" alt="" width="42" height="56">/
 execute 'normal go/<h2'
 :s/<h2>/&<a href="..\/..\/index.htm">/
 :s/ e /<\/a> e <a href="..\/..\/index.htm">/
 :s/<\/h2><\/a>/<\/a><\/h2>/
endfunction

function! EspecialEspecifico()
 :%s/<p class="toplink"><a href=".*\.htm">continua.*<\/a><\/p>//
 :%s/"\(cap.*.htm" class="[ap][nr][to][ex][ri][im]o\)/"p2\1/ge
 call feedkeys("y") | call Encapar()
endfunction


command Atalhos echo "F1:  󰈙 | mF1:  󰉻 | F2: 󰓰   | F3:   | F4: 󰋪 | F5: 󱃱 | F6: 󱪗 󰉭 | F7: 󰚔 | F10: 󰊃 | F11:  | F12: 󰍜"

autocmd BufReadPost *.htm Atalhos

au FileType htm,html,htmldjango setlocal indentexpr=
