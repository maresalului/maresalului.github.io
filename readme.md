## maresalului

testes

### link útil

[repositório](https://github.com/maresalului/maresalului.github.io).

### notas

<pre>
Substituições pelo PDF
----------------------

debord/1967/11/sociedade.htm
feuerbach/1842/mes/*
feuerbach/1843/mes/*
grabois/1973/12/diario.htm
gramsci/1931/12/cartas.htm
hegel/1797/mes/idealismo.htm
hegel/1816/08/ensino.htm
hegel/1820/06/25.htm
hegel/1820/06/historia.htm
hegel/1822/04/religiao.htm
kant/1800/mes/logica.htm
kant/1798/mes/conflito.htm
kant/1786/mes/pensamento.htm
kant/1795/mes/paz.htm
kant/1797/mes/mentir.htm
kant/1788/mes/pratica.htm
kant/1793/mes/limites.htm
kant/1794/mes/fim.htm
kant/1793/mes/corrente.htm
kant/1784/mes/resposta.htm
kant/1784/mes/historia.htm


Incompletos
-----------

kollontai/1915/mes/guerra.htm


ERROS COMUNS
============

de transcrição
--------------

cm          		    em
dc		                de
KarI Marx	            Karl Marx
-Ia	                	-la
-sc	                	-se
 ,                      ,


de conversão
------------

os links de Creative Commons não acompanham a classe, são todos by-sa
p align="right"
tabelas perdidas
classes obsoletas
manutenção de titulo-capitulo em h4 de capítulos
permanência de h3s no main de capítulos
permanência de alguns <hr> indevidos
[0-9][0-9]Últimaalteração
<h3></header></h3>


de html
-------

<\/b>:
[a-z]<\/p>\n<p>[a-z]    


FAZER NO FINAL
==============

evidentemente, checar todos os acima.
checar span.info que podem ter ficado.
rg "<br>" */*/*/index.htm                                   *** [não lembro o que isso deveria detectar?]
procurar por <p class="datas">
procurar por <p.*?> [espaço em branco] </p>
rg capXX e capYY
liquidar a classe .semborda
rg <span class="info"> e <span>s em geral
procurar <title>s idênticos
rg <\/a id=".\{-}">
rg <center> [e possíveis outros elementos legado]
rg " style=\""
rg "<\/b><b>" e similares


COMANDOS
========

detecta classes na subseção
---------------------------

rg --pcre2 'class="(.*?)"' -or '$1' .
                ( captura )   .*? non-greedy  


CONVENÇÕES
==========

ordem de precedência no rodapé
------------------------------

recomendações
notas de rodapé
agradecimento de colaboração
inclusão                        ELEMENTO FINAL FIXO
</pre>
