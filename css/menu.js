function selectaplace(form) {
var appname= navigator.appName;
var appversion=parseInt(navigator.appVersion);
if (appname == "Netscape" && appversion >= 3) {
var formindex=form.select1.selectedIndex;
var storage=form.select1.options[formindex].text;
if (form.select1.options[formindex].value != "none") {
var msg=storage+"You are now being transferred to the -> "+storage;
for (var spot=0;spot<msg.length-storage.length;spot++) {
var x=msg.substring(spot,msg.length);
form.select1.options[formindex].text=x;
for(var d=0;d<150;d++) { };
}
window.location=form.select1.options[formindex].value;
form.select1[formindex].text=storage;
} else {
form.select1[formindex].text="Not a real option!";
for(var d=0;d<1250;d++) { };
form.select1[formindex].text=storage;
 }
}
else {
var formindex=form.select1.selectedIndex;
window.location=form.select1.options[formindex].value;
 }
}
function makeMyMenu() {
document.write ('<table align=center border=0><tr>');
document.write ('<td>');
document.write ('<form><select name="select1" aria-label="Selecione um autor" onChange="selectaplace(this.form)" size=1>');
document.write ('<option class="destaque" value="">Selecione o autor');
document.write ('<option value="marx/index.htm">Marx, Karl');
document.write ('<option value="marx/index.htm">Engels, Friedrich');
document.write ('<option value="lenin/index.htm">Lênin, V. I.');
document.write ('<option class="destaque" value="biblioteca.htm">Ordem alfabética');
document.write ('<option value="abramo/index.htm">Abramo, Fúlvio');
document.write ('<option value="abramowski/index.htm">Abramowski, Edward Józef');
document.write ('<option value="adorno/index.htm">Adorno, Theodor');
document.write ('<option value="akcelrud/index.htm">Akcelrud, Isaac');
document.write ('<option value="alambert/index.htm">Alambert, Zuleika');
document.write ('<option value="alberto/index.htm">Alberto, Armanda Álvaro');
document.write ('<option value="alencar/index.htm">Alencar, Heron');
document.write ('<option value="alessio/index.htm">Alessio, Aldo d\'');
document.write ('<option value="alia/index.htm">Alia, Ramiz');
document.write ('<option value="allem-james/index.htm">Allen, James');
document.write ('<option value="allen/index.htm">Allen, Theodore W.');
document.write ('<option value="allende/index.htm">Allende, Salvador');
document.write ('<option value="alpatov/index.htm">Alpatov, Mikhail');
document.write ('<option value="alquati/index.htm">Alquati, Romano');
document.write ('<option value="althusser/index.htm">Althusser, Louis');
document.write ('<option value="alves/index.htm">Alves, Mário');
document.write ('<option value="amado/index.htm">Amado, Jorge');
document.write ('<option value="amazonas/index.htm">Amazonas, João');
document.write ('<option value="amendola/index.htm">Amendola, Giorgio');
document.write ('<option value="amin/index.htm">Amin, Samir');
document.write ('<option value="andropov/index.htm">Andropov, Yuri');
document.write ('<option value="angjeli/index.htm">Angjeli, Kristaq');
document.write ('<option value="arafat/index.htm">Arafat, Yasser')
document.write ('<option value="argan/index.htm">Argan, Giulio Carlo')
document.write ('<option value="armand-emile/index.htm">Armand, Émile')
document.write ('<option value="armand/index.htm">Armand, Inessa')
document.write ('<option value="arroyo/index.htm">Arroyo, Ângelo')
document.write ('<option value="arruda/index.htm">Arruda, Diógenes');
document.write ('<option value="arshinov/index.htm">Arshinov, Piotr');
document.write ('<option value="aveling/index.htm">Aveling, Edward');
document.write ('<option value="babeuf/index.htm">Babeuf, Gracchus');
document.write ('<option value="babo/index.htm">Babo, Alexandre');
document.write ('<option value="badaloni/index.htm">Badaloni, Nicola');
document.write ('<option value="ba-jin/index.htm">Ba Jin');
document.write ('<option value="bains/index.htm">Bains, Hardial');
document.write ('<option value="bakunin/index.htm">Bakunin, Mikhail');
document.write ('<option value="balino/index.htm">Baliño, Carlos');
document.write ('<option value="bambirra/index.htm">Bambirra, Vania');
document.write ('<option value="barata/index.htm">Barata, Agildo');
document.write ('<option value="barreto/index.htm">Barreto, Lima');
document.write ('<option value="basbaum/index.htm">Basbaum, Leôncio');
document.write ('<option value="bayo/index.htm">Bayo, Alberto');
document.write ('<option value="bebel/index.htm">Bebel, August');
document.write ('<option value="beer/index.htm">Beer, Max');
document.write ('<option value="beinstein/index.htm">Beinstein, Jorge');
document.write ('<option value="benjamin/index.htm">Benjamin, Walter');
document.write ('<option value="bensaid/index.htm">Bensaid, Daniel');
document.write ('<option value="beria/index.htm">Beria, Lavrentiy');
document.write ('<option value="berkins/index.htm">Berkins, Lohana');
document.write ('<option value="berkman/index.htm">Berkman, Alexander');
document.write ('<option value="berlinguer/index.htm">Berlinguer, Enrico');
document.write ('<option value="berlioz/index.htm">Berlioz, Joanny');
document.write ('<option value="bernal/index.htm">Bernal, John Desmond');
document.write ('<option value="bernstein/index.htm">Bernstein, Eduard');
document.write ('<option value="bettelheim/index.htm">Bettelheim, Charles');
document.write ('<option value="bezerra/index.htm">Bezerra, Gregório');
document.write ('<option value="bierut/index.htm">Bierut, Boleslaw');
document.write ('<option value="blanqui/index.htm">Blanqui, Louis Auguste');
document.write ('<option value="bloch/index.htm">Bloch, Gérard');
document.write ('<option value="boffa/index.htm">Boffa, Giuseppe');
document.write ('<option value="bogdanov/index.htm">Bogdánov, Aleksandr');
document.write ('<option value="boldrini/index.htm">Boldrini, Arrigo');
document.write ('<option value="bonnet/index.htm">Bonnet, Marguerite');
document.write ('<option value="bordiga/index.htm">Bordiga, Amadeo');
document.write ('<option value="brandao/index.htm">Brandão, Otávio');
document.write ('<option value="brandler/index.htm">Brandler, Heinrich');
document.write ('<option value="harnecker/index.htm">Brar, Harpal');
document.write ('<option value="brecht/index.htm">Brecht, Bertolt');
document.write ('<option value="breitman/index.htm">Breitman, George');
document.write ('<option value="brezhnev/index.htm">Brejnév, Leonid');
document.write ('<option value="brendel/index.htm">Brendel, Cajo');
document.write ('<option value="breton/index.htm">Breton, André');
document.write ('<option value="brinton/index.htm">Brinton, Maurice');
document.write ('<option value="broue/index.htm">Broué, Pierre');
document.write ('<option value="bryant/index.htm">Bryant, Louise');
document.write ('<option value="buey/index.htm">Buey, Francisco Fernández');
document.write ('<option value="bukharin/index.htm">Bukharin, Nikolai');
document.write ('<option value="bulganin/index.htm">Bulganin, Nikolai');
document.write ('<option value="buonicore/index.htm">Buonicore, Augusto');
document.write ('<option value="burns/index.htm">Burns, Emile');
document.write ('<option value="cabral/index.htm">Cabral, Amílcar');
document.write ('<option value="campoamor/index.htm">Campoamor, Clara');
document.write ('<option value="cannon/index.htm">Cannon, James');
document.write ('<option value="caraca/index.htm">Caraça, Bento de Jesus');
document.write ('<option value="carcani/index.htm">Çarçani, Adil');
document.write ('<option value="carneiro/index.htm">Carneiro, Edison');
document.write ('<option value="carone/index.htm">Carone, Edgard');
document.write ('<option value="carvalho-amaro/index.htm"> Carvalho, Amaro Luiz de (Capivara)');
document.write ('<option value="apolonio/index.htm">Carvalho, Apolônio');
document.write ('<option value="carpio/index.htm">Carpio, Salvador Cayetano');
document.write ('<option value="castro/index.htm">Castro, Fidel');
document.write ('<option value="cerroni/index.htm">Cerroni, Umberto');
document.write ('<option value="chasin/index.htm">Chasin, José');
document.write ('<option value="guevara/index.htm"> Che Guevara, Ernesto');
document.write ('<option value="chen-po-ta/index.htm">Chen Boda');
document.write ('<option value="chen_yun/index.htm">Chen Yun');
document.write ('<option value="chtemenko/index.htm">Chtemiénko, Serguei');
document.write ('<option value="ciliga/index.htm">Ciliga, Ante');
document.write ('<option value="cirules/index.htm">Cirules, Enrique');
document.write ('<option value="cobani/index.htm">Çobani, Javer');
document.write ('<option value="cohen/index.htm">Cohen, Gerald Allan');
document.write ('<option value="connolly/index.htm">Connolly, James');
document.write ('<option value="cotrim/index.htm">Cotrim, Lívia');
document.write ('<option value="coutinho/index.htm">Coutinho, Carlos Nelson');
document.write ('<option value="cruse/index.htm">Cruse, Harold');
document.write ('<option value="cueva/index.htm">Cueva, Agustín');
document.write ('<option value="cunhal/index.htm">Cunhal, Álvaro');
document.write ('<option value="dang_xuan_ky/index.htm">Dang Xuan Ky');
document.write ('<option value="dangeville/index.htm">Dangeville, Roger');
document.write ('<option value="darcy/index.htm">Darcy, Samuel Adams');
document.write ('<option value="dasgupta/index.htm">Dasgupta, Biplab');
document.write ('<option value="davydov/index.htm">Davydov, Vasili');
document.write ('<option value="deberry/index.htm">DeBerry, Clifton');
document.write ('<option value="debord/index.htm">Debord, Guy');
document.write ('<option value="deng-xiaoping/index.htm">Deng Xiaoping');
document.write ('<option value="dennis/index.htm">Dennis, Eugene');
document.write ('<option value="deutscher/index.htm">Deutscher, Isaac');
document.write ('<option value="dias-giocondo/index.htm">Dias, Giocondo');
document.write ('<option value="dias/index.htm">Dias, Edmundo Fernandes');
document.write ('<option value="dimitrov/index.htm">Dimitrov, Georgi');
document.write ('<option value="dotres/index.htm">Dotres, Merceditas Sánchez');
document.write ('<option value="draper/index.htm">Draper, Hal');
document.write ('<option value="du-bois/index.htm">Du Bois, W. E. B.');
document.write ('<option value="duclos/index.htm">Duclos, Jacques');
document.write ('<option value="dunayevskaya/index.htm">Dunayevskaya, Raya');
document.write ('<option value="dune/index.htm">Dune, Eduard');
document.write ('<option value="dutt/index.htm">Dutt, Rajani Palme');
document.write ('<option value="einstein/index.htm">Einstein, Albert');
document.write ('<option value="eisenstein/index.htm">Eisenstein, Serguei');
document.write ('<option value="eluard/index.htm">Éluard, Paul');
document.write ('<option value="marx/index.htm">Engels, Friedrich');
document.write ('<option value="enríquez/index.htm">Enríquez, Miguel');
document.write ('<option value="etievant/index.htm">Etiévant, Georges');
document.write ('<option value="fabbri/index.htm">Fabbri, Luigi');
document.write ('<option value="fabbri-luce/index.htm">Fabbri, Luce');
document.write ('<option value="faco/index.htm">Facó, Rui');
document.write ('<option value="fajon/index.htm">Fajon, Étienne');
document.write ('<option value="fanon/index.htm">Fanon, Frantz');
document.write ('<option value="fausto/index.htm">Fausto, Ruy');
document.write ('<option value="fernandes/index.htm">Fernandes, Florestan');
document.write ('<option value="ferreira/index.htm">Ferreira, Joaquim Câmara');
document.write ('<option value="feuerbach/index.htm">Feuerbach, Ludwig');
document.write ('<option value="fock/index.htm">Fock, Vladimir');
document.write ('<option value="ford/index.htm">Ford, James W.');
document.write ('<option value="foster/index.htm">Foster, William Z.');
document.write ('<option value="fourier/index.htm">Fourier, Charles');
document.write ('<option value="freitas/index.htm">Freitas, Alípio');
document.write ('<option value="freville/index.htm">Fréville, Jean');
document.write ('<option value="frunze/index.htm">Frunze, Mikhail');
document.write ('<option value="furtseva/index.htm">Furtseva, Yekaterina');
document.write ('<option value="gagarin/index.htm">Gagarin, Iuri');
document.write ('<option value="galeano/index.htm">Galeano, Eduardo');
document.write ('<option value="gandhi/index.htm">Gandhi, Anuradha');
document.write ('<option value="garroni/index.htm">Garroni, Stefano');
document.write ('<option value="gascon/index.htm">Gascón, Amparo Poch y');
document.write ('<option value="giap/index.htm">Giap, Vo Nguyen');
document.write ('<option value="gika/index.htm">Gika, Comandante');
document.write ('<option value="goldman/index.htm">Goldman, Emma');
document.write ('<option value="goldner/index.htm">Goldner, Loren');
document.write ('<option value="gomulka/index.htm">Gomułka, Władysław');
document.write ('<option value="goncalves/index.htm">Gonçalves, Bento');
document.write ('<option value="goncalves-vasco/index.htm">Gonçalves, Vasco');
document.write ('<option value="gonzalez/index.htm">Gonzalez, Lélia');
document.write ('<option value="gorender/index.htm">Gorender, Jacob');
document.write ('<option value="gorki/index.htm">Gorki, Máximo');
document.write ('<option value="gorter/index.htm">Gorter, Herman');
document.write ('<option value="gorz/index.htm">Gorz, André');
document.write ('<option value="gossweiler/index.htm">Gossweiler, Kurt');
document.write ('<option value="gottwald/index.htm">Gottwald, Klement');
document.write ('<option value="grabois/index.htm">Grabois, Maurício');
document.write ('<option value="gramsci/index.htm">Gramsci, Antônio');
document.write ('<option value="grant/index.htm">Grant, Ted');
document.write ('<option value="grave/index.htm">Grave, Jean');
document.write ('<option value="grossmann/index.htm">Grossmann, Henryk');
document.write ('<option value="grosz/index.htm">Grosz, Victor');
document.write ('<option value="guedes/index.htm">Guedes, Armênio');
document.write ('<option value="guerin/index.htm">Guérin, Daniel');
document.write ('<option value="guha/index.htm">Guha, Moni');
document.write ('<option value="guillaume/index.htm">Guillaume, James');
document.write ('<option value="guillen/index.htm">Guillén, Abraham');
document.write ('<option value="guimaraes/index.htm">Guimarães, Alberto Passos');
document.write ('<option value="haldane/index.htm">Haldane, J. B. S.');
document.write ('<option value="hallas/index.htm">Hallas, Duncan');
document.write ('<option value="hamon/index.htm">Hamon, Augustin Frédéric');
document.write ('<option value="hampton/index.htm">Hampton, Fred');
document.write ('<option value="handal/index.htm">Handal, Schafik');
document.write ('<option value="harman/index.htm">Harman, Chris');
document.write ('<option value="harnecker/index.htm">Harnecker, Marta');
document.write ('<option value="harnecker/index.htm">Harpal, Brar');
document.write ('<option value="haywood/index.htm">Haywood, Harry');
document.write ('<option value="hegel/index.htm">Hegel, Georg');
document.write ('<option value="heijenoort/index.htm">Heijenoort, Jean Van');
document.write ('<option value="hekmat/index.htm">Hekmat, Mansoor');
document.write ('<option value="ho_chi_minh/index.htm">Ho Chi Minh');
document.write ('<option value="hobsbawm/index.htm">Hobsbawm, Eric');
document.write ('<option value="holzkamp/index.htm">Holzkamp, Klaus');
document.write ('<option value="horkheimer/index.htm">Horkheimer, Max');
document.write ('<option value="houtart/index.htm">Houtart, François');
document.write ('<option value="hoxha/index.htm">Hoxha, Enver');
document.write ('<option value="hoxha_nex/index.htm">Hoxha, Nexhmije');
document.write ('<option value="hughes/index.htm">Hughes, Langston');
document.write ('<option value="hu-qiaomu/index.htm">Hu Qiaomu');
document.write ('<option value="ianni/index.htm">Ianni, Octavio');
document.write ('<option value="iaroslavski/index.htm">Iaroslavski, Emilian');
document.write ('<option value="ibarruri/index.htm">Ibarruri, Dolores');
document.write ('<option value="ilyenkov/index.htm">Ilienkov, Evald Vasiliévitch');
document.write ('<option value="inglez/index.htm">Inglez, Carlos Aboim');
document.write ('<option value="ingrao/index.htm">Ingrao, Pietro');
document.write ('<option value="james/index.htm">James, C. L. R.');
document.write ('<option value="jiang_zemin/index.htm">Jiang Zemin');
document.write ('<option value="joffe/index.htm">Joffe, Adolph');
document.write ('<option value="jones/index.htm">Jones, Claudia');
document.write ('<option value="juliao/index.htm">Julião, Francisco');
document.write ('<option value="junior/index.htm">Júnior, Caio Prado');
document.write ('<option value="jurandir/index.htm">Jurandir, Dalcídio');
document.write ('<option value="kadare/index.htm">Kadaré, Ismail');
document.write ('<option value="kaganovitch/index.htm">Kaganovitch, Lazar');
document.write ('<option value="kalinin/index.htm">Kalinin, Mikhail');
document.write ('<option value="kant/index.htm">Kant, Immanuel');
document.write ('<option value="kardelj/index.htm">Kardelj, Edvard');
document.write ('<option value="kautsky/index.htm">Kautsky, Karl');
document.write ('<option value="keynes/index.htm">Keynes, John Maynard');
document.write ('<option value="khabarova/index.htm">Khabarova, Tatyana Mikhailovna');
document.write ('<option value="khrushchev/index.htm">Khrushchov, Nikita');
document.write ('<option value="kim_il_sung/index.htm">Kim Il Sung');
document.write ('<option value="kim_jong-il/index.htm">Kim Jong Il');
document.write ('<option value="kirichenko/index.htm">Kirichenko, Alexei');
document.write ('<option value="kollontai/index.htm">Kollontai, Alexandra');
document.write ('<option value="kolman/index.htm">Kolman, Ernst');
document.write ('<option value="konder/index.htm">Konder, Leandro');
document.write ('<option value="kopriva/index.htm">Kopriva, Ladislav');
document.write ('<option value="korsch/index.htm">Korsch, Karl');
document.write ('<option value="kosik/index.htm">Kosik, Karel');
document.write ('<option value="kremer/index.htm">Kremer, Arkadi');
document.write ('<option value="kropotkin/index.htm">Kropotkin, Piotr');
document.write ('<option value="krupskaia/index.htm">Krupskaia, Nadejda');
document.write ('<option value="kurz/index.htm">Kurz, Robert');
document.write ('<option value="kuusinen/index.htm">Kuusinen, Otto');
document.write ('<option value="labica/index.htm">Labica, Georges');
document.write ('<option value="lacerda/index.htm">Lacerda, Fernando');
document.write ('<option value="lafargue/index.htm">Lafargue, Paul');
document.write ('<option value="lamarca/index.htm">Lamarca, Carlos');
document.write ('<option value="lambert/index.htm">Lambert, Pierre');
document.write ('<option value="landauer/index.htm">Landauer, Gustav');
document.write ('<option value="langevin/index.htm">Langevin, Paul');
document.write ('<option value="lanti/index.htm">Lanti, Eugène');
document.write ('<option value="lapidus/index.htm">Lapidus, Iosif');
document.write ('<option value="lavigne/index.htm">Lavigne, Eusínio Gaston');
document.write ('<option value="leacock/index.htm">Leacock, Eleanor Burke');
document.write ('<option value="leduc/index.htm">Leduc, Victor');
document.write ('<option value="lehning/index.htm">Lehning, Arthur');
document.write ('<option value="leibniz/index.htm">Leibiniz, Gottfried Wilhelm');
document.write ('<option value="lenin/index.htm">Lênin, V. I.');
document.write ('<option value="deleon/index.htm">Leon, Daniel de');
document.write ('<option value="leontiev/index.htm">Leontiev, Alexei');
document.write ('<option value="leuenroth/index.htm">Leuenroth, Edgard');
document.write ('<option value="levins/index.htm">Levins, Richard');
document.write ('<option value="lewin/index.htm">Lewin, Moshe');
document.write ('<option value="li-dazhao/index.htm">Li Dazhao');
document.write ('<option value="liebknecht/index.htm">Liebknecht, Karl');
document.write ('<option value="lifschits/index.htm">Lifschits, Mikhail');
document.write ('<option value="lima-abreu/index.htm">Lima, José Inácio de Abreu e');
document.write ('<option value="lisboa/index.htm">Lisboa, Manoel');
document.write ('<option value="liu-chao-tsi/index.htm">Liu Chao-Tsi');
document.write ('<option value="lora/index.htm">Lora, Guillermo');
document.write ('<option value="losurdo/index.htm">Losurdo, Domenico');
document.write ('<option value="lozovski/index.htm">Lozovski, Alexandr');
document.write ('<option value="lu-ting-yi/index.htm">Lu Ting-Yi');
document.write ('<option value="ludwig/index.htm">Ludwig, Emil');
document.write ('<option value="lukacs/index.htm">Lukács, György');
document.write ('<option value="lunatcharski/index.htm">Lunatchárski, Anatoli');
document.write ('<option value="kapitonovich/index.htm">Luppol, Ivan');
document.write ('<option value="luria/index.htm">Luria, Alexander');
document.write ('<option value="luso/index.htm">Luso Soares, Fernando');
document.write ('<option value="luxemburgo/index.htm">Luxemburgo, Rosa');
document.write ('<option value="lu-xun/index.htm">Lu Xun');
document.write ('<option value="machajski/index.htm">Machajski, Jan Waclaw');
document.write ('<option value="machel-josina/index.htm">Machel, Josina');
document.write ('<option value="machel/index.htm">Machel, Samora');
document.write ('<option value="magdoff/index.htm">Magdoff, Harry Samuel');
document.write ('<option value="makarenko/index.htm">Makarenko, Anton S.');
document.write ('<option value="makhno/index.htm">Makhno, Nestor');
document.write ('<option value="maksimovski/index.htm">Maksimóvski, Vladímir');
document.write ('<option value="malatesta/index.htm">Malatesta, Errico');
document.write ('<option value="malenkov/index.htm">Malenkov, Gueórgui');
document.write ('<option value="malina/index.htm">Malina, Salomão');
document.write ('<option value="malyshev/index.htm">Malyshev, Sergei');
document.write ('<option value="manfred/index.htm">Manfred, Albert');
document.write ('<option value="mandel/index.htm">Mandel, Ernest');
document.write ('<option value="manuilsky/index.htm">Manuilsky, Dmitri');
document.write ('<option value="mao/index.htm">Mao Zedong');
document.write ('<option value="marchais/index.htm">Marchais, George');
document.write ('<option value="marcuse/index.htm">Marcuse, Herbert');
document.write ('<option value="mariategui/index.htm">Mariátegui, José Carlos');
document.write ('<option value="marighella/index.htm">Marighella, Carlos');
document.write ('<option value="marini/index.htm">Marini, Ruy Mauro');
document.write ('<option value="martens/index.htm">Martens, Ludo');
document.write ('<option value="martov/index.htm">Martov, Júlio');
document.write ('<option value="marty/index.htm">Marty, André');
document.write ('<option value="eleanor/index.htm">Marx, Eleanor');
document.write ('<option value="jenny/index.htm">Marx, Jenny');
document.write ('<option value="marx/index.htm">Marx, Karl');
document.write ('<option value="marxhausen/index.htm">Marxhausen, Thomas');
document.write ('<option value="marquit/index.htm">Marquit, Erwin');
document.write ('<option value="mattick/index.htm">Mattick, Paul');
document.write ('<option value="maximoff/index.htm">Maximoff, Grigori');
document.write ('<option value="mayakovsky/index.htm">Mayakovsky, Vladimir');
document.write ('<option value="mazundar/index.htm">Mazumdar, Charu');
document.write ('<option value="medeiros/index.htm">Medeiros, António Tomás');
document.write ('<option value="mehring/index.htm">Mehring, Franz');
document.write ('<option value="mella-julio/index.htm">Mella, Julio Antonio');
document.write ('<option value="mella/index.htm">Mella, Ricardo');
document.write ('<option value="meszaros/index.htm">Mészáros, István');
document.write ('<option value="messali-hadj/index.htm">Messali Hadj, Ahmed');
document.write ('<option value="mett/index.htm">Mett, Ida');
document.write ('<option value="meyer_ernest/index.htm">Meyer, Ernest');
document.write ('<option value="meyer/index.htm">Meyer, Victor');
document.write ('<option value="miasnikov/index.htm">Miasnikov, Gavril Ilyich');
document.write ('<option value="mikhailov/index.htm">Mikhailov, Nikolai');
document.write ('<option value="mikoian/index.htm">Mikoian, Anastas');
document.write ('<option value="molotov/index.htm">Molotov, Vyacheslav');
document.write ('<option value="monmousseau/index.htm">Monmousseau, Gaston');
document.write ('<option value="montefiore/index.htm">Montefiore, Dora');
document.write ('<option value="montenegro/index.htm">Montenegro, Ana');
document.write ('<option value="morais/index.htm">Morais, Clodomir');
document.write ('<option value="moreno/index.htm">Moreno, Nahuel');
document.write ('<option value="moura/index.htm">Moura, Clóvis');
document.write ('<option value="moura-maria/index.htm">Moura, Maria Lacerda de');
document.write ('<option value="napoleoni/index.htm">Napoleoni, Cláudio');
document.write ('<option value="neto/index.htm">Neto, Agostinho');
document.write ('<option value="newton/index.htm">Newton, Huey');
document.write ('<option value="nietzsche/index.htm">Nietzsche, Friedrich');
document.write ('<option value="nin/index.htm">Nin, Andreu');
document.write ('<option value="nkrumah/index.htm">Nkrumah, Kwame');
document.write ('<option value="novack/index.htm">Novack, George'); 
document.write ('<option value="oliveira/index.htm">Oliveira, César');
document.write ('<option value="odena/index.htm">Ódena, Elena');
document.write ('<option value="oliveira-chico/index.htm">Oliveira, Francisco de');
document.write ('<option value="ossinski/index.htm">Ossinski, Nikolai'); 
document.write ('<option value="ostrovitianov/index.htm">Ostrovitianov, Konstantín');
document.write ('<option value="padmore/index.htm">Padmore, George');
document.write ('<option value="pajetta/index.htm">Pajetta, Giancarlo'); 
document.write ('<option value="pankhurst/index.htm">Pankhurst, Sylvia'); 
document.write ('<option value="pankratova/index.htm">Pankratova, Anna Mikhailovna'); 
document.write ('<option value="pannekoe/index.htm">Pannekoek, Anton');
document.write ('<option value="panzieri/index.htm">Panzieri, Raniero');
document.write ('<option value="parsons/index.htm">Parsons, Lucy');
document.write ('<option value="pashukanis/index.htm">Pashukanis, Evgeny');
document.write ('<option value="pavlov/index.htm">Pavlov, Ivan');
document.write ('<option value="pecheux/index.htm">Pêcheux, Michel');
document.write ('<option value="pelloutier/index.htm">Pelloutier, Fernand');
document.write ('<option value="penaranda/index.htm">Peñaranda, Agar');
document.write ('<option value="astrojildo/index.htm">Pereira, Astrojildo');
document.write ('<option value="perlman/index.htm">Perlman, Fredy');
document.write ('<option value="petrichenko/index.htm">Petrichenko, Stepan');
document.write ('<option value="pervukhin/index.htm">Pervukhin, Mikhail');
document.write ('<option value="pfemfert/index.htm">Pfemfert, Franz');
document.write ('<option value="piatnitsky/index.htm">Piatnitsky, Ossip');
document.write ('<option value="pieck/index.htm">Pieck, Wilhelm');
document.write ('<option value="pinto/index.htm">Pinto, Álvaro Vieira');
document.write ('<option value="plekhanov/index.htm">Plekhanov, Guiorgui');
document.write ('<option value="pokrovsky/index.htm">Pokrovsky, Mikhail');
document.write ('<option value="politzer/index.htm">Politzer, Georges');
document.write ('<option value="poltorak/index.htm">Poltorak, Arkady');
document.write ('<option value="pomar/index.htm">Pomar, Pedro');
document.write ('<option value="pomar-wladimir/index.htm">Pomar, Wladimir');
document.write ('<option value="pospelov/index.htm">Pospelov, Pyotr');
document.write ('<option value="postone/index.htm">Postone, Moishe');
document.write ('<option value="pouget/index.htm">Pouget, Emile');
document.write ('<option value="poulantzas/index.htm">Poulantzas, Nicos');
document.write ('<option value="preobrazhensky/index.htm">Preobrazhensky, Evgeni');
document.write ('<option value="prestes/index.htm">Prestes, Luiz Carlos');
document.write ('<option value="prestes-olga/index.htm">Prestes, Olga Benário');
document.write ('<option value="proudhon/index.htm">Proudhon, Pierre-Joseph');
document.write ('<option value="queiroz-eca/index.htm">Queiroz, Eça de');
document.write ('<option value="queiroz/index.htm">Queiroz, Maurício Vinhas de');
document.write ('<option value="quental/index.htm">Quental, Antero de');
document.write ('<option value="quijano/index.htm">Quijano, Anibal');
document.write ('<option value="quiros/index.htm">Quirós, Manuel');
document.write ('<option value="radek/index.htm">Radek, Karl');
document.write ('<option value="ragionieri/index.htm">Ragionieri, Ernesto');
document.write ('<option value="rakosi/index.htm">Rakosi, Mathias');
document.write ('<option value="rakovski/index.htm">Rakovski, Christian');
document.write ('<option value="ramette/index.htm">Ramette, Arthur');
document.write ('<option value="graciliano/index.htm">Ramos, Graciliano');
document.write ('<option value="ramos/index.htm">Ramos, Jorge Abelardo');
document.write ('<option value="raposo/index.htm">Raposo, Manuel Coelho');
document.write ('<option value="rappoport/index.htm">Rappoport, Charles');
document.write ('<option value="rates/index.htm">Rates, José Carlos');
document.write ('<option value="reale/index.htm">Reale, Eugenio');
document.write ('<option value="reclus/index.htm">Reclus, Élisée');
document.write ('<option value="reed/index.htm">Reed, John');
document.write ('<option value="reed-evelyn/index.htm">Reed, Evelyn');
document.write ('<option value="reis/index.htm">Reis, Dinarco');
document.write ('<option value="reiss/index.htm">Reiss, Ignace');
document.write ('<option value="rezk/index.htm">Rezk, Antonio');
document.write ('<option value="riazanov/index.htm">Riazanov, David');
document.write ('<option value="ricardo/index.htm">Ricardo, David');
document.write ('<option value="rocker/index.htm">Rocker, Rudolf');
document.write ('<option value="rodney/index.htm">Rodney, Walter');
document.write ('<option value="rodrigues_edgar/index.htm">Rodrigues, Edgar');
document.write ('<option value="rodrigues/index.htm">Rodrigues, Francisco Martins');
document.write ('<option value="rodrigues-miguel/index.htm">Rodrigues, Miguel Urbano');
document.write ('<option value="romeu/index.htm">Romeu, Xavier');
document.write ('<option value="rosdolsky/index.htm">Rosdolsky, Roman');
document.write ('<option value="roy/index.htm">Roy, Manabendra Nath');
document.write ('<option value="rubel/index.htm">Rubel, Maximilien');
document.write ('<option value="rubinstein/index.htm">Rubinstein, Serguei');
document.write ('<option value="ruhle/index.htm">R&uuml;hle, Otto');
document.write ('<option value="ruy/index.htm">Ruy, José Carlos');
document.write ('<option value="saburov/index.htm">Saburov, Maxim');
document.write ('<option value="sachetta/index.htm">Sacchetta, Hermínio');
document.write ('<option value="sachs/index.htm">Sachs, Érico Czaczkes');
document.write ('<option value="sader/index.htm">Sader, Eder Simão');
document.write ('<option value="saffioti/index.htm">Saffioti, Heleieth');
document.write ('<option value="sankara/index.htm">Sankara, Thomas');
document.write ('<option value="santos/index.htm">Santos, Aurélio');
document.write ('<option value="santos-theotonio/index.htm">Santos, Theotônio dos');
document.write ('<option value="sapronov/index.htm">Saprónov, Timofei');
document.write ('<option value="saramago/index.htm">Saramago, José');
document.write ('<option value="sartre/index.htm">Sartre, Jean-Paul');
document.write ('<option value="schaff/index.htm">Schaff, Adam');
document.write ('<option value="schapiro/index.htm">Schapiro, Alexander');
document.write ('<option value="schwitzguebel/index.htm">Schwitzguébel, Adhémar');
document.write ('<option value="secchia/index.htm">Secchia, Pietro');
document.write ('<option value="serge/index.htm">Serge, Victor');
document.write ('<option value="sertorio/index.htm">Sertório, Manuel');
document.write ('<option value="seve/index.htm">Sève, Lucien');
document.write ('<option value="shepilov/index.htm">Shepilov, Dmitri');
document.write ('<option value="shliapnikov/index.htm">Shliapnikov, Alexander');
document.write ('<option value="sinani/index.htm">Sinani, Georgy Borisovich Skalov');
document.write ('<option value="slansky/index.htm">Slánsky, Rudolf');
document.write ('<option value="smith/index.htm">Smith, Adam');
document.write ('<option value="soares/index.htm">Soares, Pedro');
document.write ('<option value="sodre/index.htm">Sodré, Nélson Werneck');
document.write ('<option value="sohn-rethel/index.htm">Sohn-Rethel, Alfred');
document.write ('<option value="souvarine/index.htm">Souvarine, Boris');
document.write ('<option value="spilimbergo/index.htm">Spilimbergo, Jorge Enea');
document.write ('<option value="stalin/index.htm">Stalin, Josef');
document.write ('<option value="starobin/index.htm">Starobin, Joseph Robert');
document.write ('<option value="strasser/index.htm">Strasser, Josef');
document.write ('<option value="struik/index.htm">Struik, Dirk Jan');
document.write ('<option value="suchodolski/index.htm">Suchodolski, Bogdan');
document.write ('<option value="sultan-galiev/index.htm">Sultan-Galiev, Mirsaid');
document.write ('<option value="sun-yat-sen/index.htm">Sun Yat Sen');
document.write ('<option value="surjeet/index.htm">Surjeet, Harkishan Singh');
document.write ('<option value="suslov/index.htm">Suslov, Mikhail');
document.write ('<option value="sweezy/index.htm">Sweezy, Paul');
document.write ('<option value="ta/index.htm">Ta Thu Thau');
document.write ('<option value="tchakhotine/index.htm">Tchakhotine, Sergei');
document.write ('<option value="thalheimer/index.htm">Thalheimer, August');
document.write ('<option value="thompson/index.htm">Thompson, Edward Palmer');
document.write ('<option value="thorez/index.htm">Thorez, Maurice');
document.write ('<option value="tito/index.htm">Tito, Josip Broz');
document.write ('<option value="togliatti/index.htm">Togliatti, Palmiro');
document.write ('<option value="trachtenberg/index.htm">Trachtenberg, Orest');
document.write ('<option value="tragtenberg/index.htm">Tragtenberg, Maurício');
document.write ('<option value="tristan/index.htm">Tristan, Flora');
document.write ('<option value="truong-chinh/index.htm">Trường Chinh');
document.write ('<option value="trotsky/index.htm">Trotsky, Leon');
document.write ('<option value="sedova/index.htm">Trotsky, Natalia');
document.write ('<option value="varga/index.htm">Varga, Eugéne');
document.write ('<option value="vasco/index.htm">Vasco, Neno');
document.write ('<option value="vazquez/index.htm">Vázquez, Adolfo Sánchez');
document.write ('<option value="vieira/index.htm">Vieira, Alexandre Fernandes');
document.write ('<option value="volin/index.htm">Volin, Vsevolod');
document.write ('<option value="voloshinov/index.htm">Voloshinov, Valentin');
document.write ('<option value="vorochilov/index.htm">Vorochilov, Kliment');
document.write ('<option value="voronsky/index.htm">Voronsky, Aleksandr');
document.write ('<option value="vygotsky/index.htm">Vygotsky, Lev');
document.write ('<option value="xholi/index.htm">Xholi, Zija');
document.write ('<option value="wagner/index.htm">Wagner, Helmut');
document.write ('<option value="wallon/index.htm">Wallon, Henri');
document.write ('<option value="weber/index.htm">Weber, Max');
document.write ('<option value="weinstone/index.htm">Weinstone, William Wolf');
document.write ('<option value="whyte/index.htm">Whyte, Harry');
document.write ('<option value="willard/index.htm">Willard, Marcel');
document.write ('<option value="wood/index.htm">Wood, Ellen Meiksins');
document.write ('<option value="wright/index.htm">Wright, John');
document.write ('<option value="yakovlev/index.htm">Yakovlev, Nikolai');
document.write ('<option value="yanovskaya/index.htm">Yanovskaya, Sofia');
document.write ('<option value="yao-wenyuan/index.htm">Yao Wenyuan');
document.write ('<option value="zetkin/index.htm">Zetkin, Clara');
document.write ('<option value="zhang/index.htm">Zhang Chunqiao');
document.write ('<option value="zhdanov/index.htm">Zhdanov, Andrei');
document.write ('<option value="chu-en-lai/index.htm">Zhou Enlai');
document.write ('<option value="zinoviev-alexandr/index.htm">Zinoviev, Aleksandr');
document.write ('<option value="zinoviev/index.htm">Zinoviev, Grigori');
document.write ('<option value="zo-daxa/index.htm">Zo d\'Axa');

document.write ('</select>');
document.write ('</form></td></tr><tr><td align=left>');
document.write ('<form><select name="select1" aria-label=ou selecione uma seção" onChange="selectaplace(this.form)" size=1>');
document.write ('<option class="destaque" value="">ou selecione a seção');
document.write ('<option value="biblioteca.htm">Biblioteca');
document.write ('<option value="dicionario/index.htm">Dicionário');
document.write ('<option value="admin/novidades.htm">Novidades');
document.write ('<option value="../xlang/index.htm">Outros idiomas'); 

document.write ('<option class="destaque" value="tematica/index.htm">Seções temáticas');
document.write ('<option value="tematica/album_fotos/index.htm">Álbum de imagens');
document.write ('<option value="tematica/audiolivros.htm">Audiolivros');
document.write ('<option value="tematica/filmes/index.htm">Cinema e revolução');
document.write ('<option value="ebooks/index.htm">Coleção de eBooks');
document.write ('<option value="tematica/ditadura1964.htm">Ditadura civil-militar de 1964');
document.write ('<option value="tematica/documentos.htm">Documentos históricos');
document.write ('<option value="tematica/frelimo.htm">Documentos da Frelimo');
document.write ('<option value="tematica/fascismo.htm">Fascismo');
document.write ('<option value="tematica/imprensa.htm">Imprensa proletária');
document.write ('<option value="tematica/luta-armada.htm">Luta armada');
document.write ('<option value="tematica/mulher.htm">Marxismo e a mulher');
document.write ('<option value="tematica/arte.htm">Marxismo e a arte');
document.write ('<option value="tematica/racismo.htm">Marxismo e a questão racial');
document.write ('<option value="tematica/religiao.htm">Marxismo e religião');
document.write ('<option value="tematica/lgbt.htm">Marxismo, gênero e sexualidade');
document.write ('<option value="tematica/musica/index.htm">Música revolucionária');
document.write ('<option value="tematica/partidos.htm">Partidos comunistas');
document.write ('<option value="tematica/questao-agraria.htm">Questão agrária');
document.write ('<option value="tematica/palestina.htm">Questão palestina');
document.write ('<option value="tematica/repressao.htm">Repressão política');
document.write ('<option value="tematica/25abril.htm">Revolução dos Cravos');
document.write ('<option value="tematica/revolucao_1917.htm">Revolução Russa');
document.write ('<option value="tematica/sindicalismo.htm">Sindicalismo');

document.write ('<option class="destaque" value="">Outras páginas');
document.write ('<option value="../admin/volunteers/steering.htm">Quem somos');
document.write ('<option value="admin/mapa.htm">Mapa do site');

document.write ('</select>');
document.write ('</form></td></tr></table>');
}
makeMyMenu();
