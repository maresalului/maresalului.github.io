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
 %s/-&nbsp;/- /ge
 %s/&nbsp;-/ -/ge
 %s/ &nbsp;/ /ge
 %s/&nbsp; / /ge
 %s/&nbsp;/ /ge
 %s/<\/b> <b>/ /ge
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

autocmd BufReadPost *.html call PegaUnicode()
autocmd BufReadPost *.html call PegaTAG()
autocmd BufReadPost *.html call PegaH1()
autocmd BufReadPost *.html call PegaH2()
autocmd BufReadPost *.html call PegaH3()
autocmd BufReadPost *.html call PegaStyle()

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
command Encapar :%s/ .space="10" .space="10" align="right"/ class="capadelivro"/c

au FileType htm,html,htmldjango setlocal indentexpr=
