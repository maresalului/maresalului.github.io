## maresalului

testes

### link útil

[repositório](https://github.com/maresalului/maresalului.github.io).

### notas

<pre>
EXIGE REVISÃO URGENTE
=====================

marx/1843/questaojudaica.htm
marx/1856/10/30.htm e demais do geoeconomia
marx/1859/contcriteconpoli/introducao.htm
plekhanov/1904/mes/90.htm


IMAGENS NOVAS
=============

bukharin
graciliano
krupskaia
luxemburgo
malatesta
mandel
marighella
molotov
montefiore
nkrumah
piatnitsky
pieck
pouget
preobrajenski
prestes-olga
proudhon
queiroz-eça
quijano
rakosi
rappoport
reclus
reed
reis
reiss
riazanov
rodney
rosdolsky


PÁGINAS MARCADAS PARA ELIMINAÇÃO
================================

Duplicatas
----------

castro/2004/06/24.htm
galeano/ano/mes/consumo.htm
lenin/1918/11/fotos.htm
marx/1871/05/30.htm
[checar redir.css]


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
malatesta/ano/mes/anarquismo.htm


Incompletos
-----------

kollontai/1915/mes/guerra.htm


Traduções duvidosas
-------------------

lenin/1920/12/06.htm
marx/1867/06/22.htm


ERROS COMUNS
============

de transcrição
--------------

cm          		    em
dc		                de
KarI Marx	            Karl Marx
-Ia	                	-la
-sc	                	-se
[ ],                    ,
[a-z]I[a-z]             [a-z]l[a-z]
urna                    uma
lo.                     1.º
[ ]á[ ]                 [ ]à[ ]
„                       [.,][,.]
xvn                     XVII
xvm                     XVIII
  
  [A-z]\.[A-z]            [A-z][A-z]
  [A-z][ ]\.[ ][A-z]      [A-z] [A-z]
  [ ]0[ ][A-z]            [ ]O[ ][A-z]

J                       ]
a critica               a crítica
[ ]c[ ]                 [ ]e[ ]


de conversão
------------

os links de Creative Commons não acompanham a classe, são todos by-sa
p align="right"
tabelas perdidas
classes obsoletas
manutenção de titulo-capitulo em h4 de capítulos
permanência de h3s no main de capítulos
permanência de alguns &lt;hr&gt; indevidos
[0-9][0-9]Últimaalteração
&lt;h3&gt;&lt;/header&gt;&lt;/h3&gt;
links "Relativizados" em diretórios não convencionais


de html
-------

&lt;\/b&gt;:
[a-z]&lt;\/p&gt;\n&lt;p&gt;[a-z]    


FAZER NO FINAL
==============

evidentemente, checar todos os acima.
checar span.info que podem ter ficado.
rg "&lt;br&gt;" */*/*/index.htm                                   [não lembro do que isso devia supostamente fazer]
procurar por &lt;p class="datas"&gt;
procurar por &lt;p.*?&gt; [espaço em branco] &lt;/p&gt;
rg capXX e capYY e outras reminiscências do modelo.htm
liquidar a classe .semborda
rg &lt;span class="info"&gt; e &lt;span&gt;s em geral
procurar &lt;title&gt;s idênticos
rg &lt;\/a id=".\{-}"&gt;
rg &lt;center&gt; [e possíveis outros elementos legado]
rg " style=\""
rg "&lt;\/b&gt;&lt;b&gt;" e similares
rg "&lt;\/span id.\{-}&gt;"
rg "td&gt;&lt;a href=.\.\.\/" */index.htm                     &lt;!-- detecta textos fora da pasta nos índices --&gt;
regar os cap9.htm destoantes
rg "&lt;sup&gt;[oa]"
deletar arquivos mp3/ogg/etc e outros não modificados
rg "[vh]space"
rg \., e ,\.
preencher &lt;td&gt;&lt;/td&gt; com nbsp
rg --pcre2 'lang="fr"&gt;(.*?)&lt;!--[&lt;]--&gt;' -or '$1' .
adicionar datas nas cartas de marx engels
caçar os redir.css e ver se estão referenciados nos indices
trocar meia-riscas – por travessões —
rg "ç[àá]o" por ção
rg " \!"

COMANDOS
========

detecta classes na subseção
---------------------------

rg --pcre2 'class="(.*?)"' -or '$1' .
                ( captura )   .*? não-ganancioso  


CONVENÇÕES
==========

ordem de precedência no rodapé
------------------------------

recomendações
notas de rodapé
agradecimento de colaboração
inclusão                        ELEMENTO FINAL FIXO

número de classes
-----------------

o número máximo de classes *sugerido* pela Norma é de três classes. se mais de três de classes estão sendo usadas num determinado elemento, é hora de parar e refletir. algo está errado. à exceção de casos muito especiais, a maioria dos elementos prescinde de mais de uma classe.

nome de classes
---------------

o nome das classes deve ser autoexplicativo. é recomendável que se possa intuir o nome da classe a partir da necessidade, ao escrever, e deduzi-lo a partir do contexto, ao ler.

elementos &lt;title&gt; em capítulos
------------------------------

quando o título de um capítulo de livro se tratar de elementos pré ou pós-textuais — prólogo, introdução, dedicatória, prefácio, epígrafe, posfácio, anexos —, convém que o elemento &lt;title&gt; acompanhe o título da obra:

DO: &lt;title&gt;Prefácio a Que Fazer?&lt;/title&gt;
DON'T: &lt;title&gt;Prefácio&lt;/title&gt;

ordem de precedência de informações
-----------------------------------

transcrição autorizada          ELEMENTO TOPO
origem
escrito
primeira edição
fonte
fonte para a tradução
tradução
revisão da tradução
transcrição
revisão da transcrição
html
observação
direitos de reprodução
formatos alternativos           ELEMENTO FINAL

ordem de precedência em múltiplos autores
-----------------------------------------

por padrão, por ordem alfabética
se somente um autor possui arquivo, ele vai primeiro

posicionamento de capas de livro
--------------------------------

devem ser inseridas preferencialmente em parágrafos completos

elementos &lt;title&gt; em títulos genéricos
--------------------------------------

quando o título de um texto for genérico ou pouco específico — como em cartas —, convém que o elemento &lt;title&gt; acompanhe informações que facilitem a diferenciação:

DO: &lt;title&gt;Carta a Marx (em Londres) — de Engels — 24 de maio de 1876&lt;/title&gt;
DON'T: &lt;title&gt;Carta a Marx&lt;/title&gt;
</pre>
