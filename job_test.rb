#! /usr/bin/env ruby

# started 12:54

# 1 ------------------------------------------------------------

def bubble_sort(list)
  return list if list.size <= 1 # already sorted
  loop do
    swapped = false
    0.upto(list.size - 2) do |i|
      if list[i] > list[i + 1]
        list[i], list[i + 1] = list[i + 1], list[i] # swap values
        swapped = true
      end
    end
    break unless swapped
  end
  list
end
puts 'Question 1'
p bubble_sort []
p bubble_sort [1]
p bubble_sort [3, 6, 7, 5, 4, 9, 8, 1, 2]
td1 = [5, 4, 3, 2, 1]
p td1.reverse == bubble_sort(td1)

# 2 ---------------------------------------------------------------
puts 'question 2'

require 'json/ext'

# https://en.wikipedia.org/wiki/The_Two_Thousand_Words
two_thousand_words = <<HEREDOC
Nejdřív ohrozila život našeho národa válka. Pak přišly špatné časy s událostmi, které ohrozily jeho duševní zdraví a charakter. S nadějemi přijala většina národa program socialismu. Jeho řízení se však dostalo do rukou nepravým lidem. Nevadilo by tolik, že neměli dost státnických zkušeností, věcných znalostí ani filosofického vzdělání, kdyby aspoň byli měli víc obyčejné moudrosti a slušnosti, aby uměli vyslechnout mínění druhých a připustili své postupné vystřídání schopnějšími.

Komunistická strana, která měla po válce velikou důvěru lidí, postupně jí vyměňovala za úřady, až je dostala všechny a nic jiného už neměla. Musíme to tak říci a vědí to i ti komunisté mezi námi, jejichž zklamání nad výsledky je tak veliké jako zklamání ostatních. Chybná linie vedení změnila stranu z politické strany a ideového svazku v mocenskou organizaci, jež nabyla velké přitažlivosti pro vládychtivé sobce, vypočítavé zbabělce a lidi se špatným svědomím. Jejich příliv zapůsobil na povahu i chování strany, která nebyla uvnitř zařízena tak, aby v ní bez ostudných příhod mohli nabývat vlivu pořádní lidé, kteří by ji plynule proměňovali, tak aby se stále hodila do moderního světa. Mnozí komunisté proti tomuto úpadku bojovali, ale nepodařilo se jim zabránit ničemu z toho, co se stalo.

Poměry v komunistické straně byly modelem i příčinou stejných poměrů ve státě. Její spojení se státem vedlo k tomu, že ztratila výhodu odstupu od výkonné moci. Činnost státu a hospodářských organizací neměla kritiku. Parlament se odnaučil rokovat, vláda vládnout a ředitelé řídit. Volby neměly význam, zákony ztratily váhu. Nemohli jsme důvěřovat svým zástupcům v žádném výboru, a když jsme mohli, nedalo se po nich zase nic chtít, protože nemohli ničeho dosáhnout. Ještě horší však bylo, že jsme už téměř nemohli důvěřovat ani jeden druhému. Osobní i kolektivní čest upadla. S poctivostí se nikam nedošlo a o nějakém oceňování podle schopností darmo mluvit. Proto většina lidí ztratila zájem o obecné věci a starala se jen o sebe a o peníze, přičemž ke špatnosti poměrů patří i to, že ani na ty peníze není dnes spolehnutí. Pokazily se vztahy mezi lidmi, ztratila se radost z práce, zkrátka přišly na národ časy, které ohrozily jeho duševní zdraví a charakter.

Za dnešní stav odpovídáme všichni, více však komunisté mezi námi, ale hlavní odpovědnost mají ti, kdo byli součástí či nástrojem nekontrolované moci. Byla to moc umíněné skupiny rozprostřená pomocí stranického aparátu z Prahy do každého okresu a obce. Tento aparát rozhodoval, co kdo smí a nesmí dělat, on řídil družstevníkům družstva, dělníkům závody a občanům národní výbory. Žádná organizace nepatřila ve skutečnosti svým členům, ani komunistická. Hlavní vinou a největším klamem těchto vládců je, že svou vůli vydávali za vůli dělnictva. Kdybychom tomu klamu chtěli věřit, museli bychom dnes dávat za vinu dělníkům úpadek našeho hospodářství, zločiny na nevinných lidech, zavedení cenzury, která zabránila, aby se o tom všem psalo, dělníci by byli vinni chybnými investicemi, ztrátami obchodu, nedostatkem bytů. Nikdo rozumný samozřejmě v takovou vinu dělnictva neuvěří. Všichni víme, zejména to ví každý dělník, že dělnictvo prakticky nerozhodovalo v ničem. Dělnické funkcionáře dával odhlasovat někdo jiný. Zatímco se mnozí dělníci domnívali, že vládnou, vládla jejich jménem zvlášť vychovaná vrstva funkcionářů stranického a státního aparátu. Ti fakticky zaujali místo svržené třídy a sami se stali novou vrchností. Spravedlivě však řekněme, že někteří z nich si tuto špatnou hru dějin dávno uvědomili. Poznáme je dnes podle toho, že odčiňují křivdy, napravují chyby, vracejí rozhodování členstvu, omezují pravomoc i početní stav úřednického aparátu. Jsou s námi proti zaostalým názorům v členstvu strany. Ale velká část funkcionářstva se brání změnám a má dosud váhu ! Má pořád ještě v ruce mocenské prostředky, zvláště na okresech a v obcích, kde jich může užívat skrytě a nežalovatelně.

Od začátku letošního roku jsme v obrodném procesu demokratizace. Začal v komunistické straně. Musíme to říci a vědí to i ti nekomunisté mezi námi, kteří odsud už nic dobrého nečekali. Je ovšem třeba dodat, že tento proces ani nemohl jinde začít. Vždyť jenom komunisté mohli po celých dvacet let žít jakýmsi politickým životem, jen komunistická kritika byla u věcí, kde se dělaly, jen opozice v komunistické straně měla tu výsadu, že byla v doteku s protivníkem. Iniciativa a úsilí demokratických komunistů je proto jen splátkou na dluh, který celá strana má u nekomunistů, jež udržovala v nerovnoprávném postavení. Komunistické straně nepatří tedy žádný dík, patří jí snad přiznat, že se poctivě snaží využít poslední příležitosti k záchraně své národní cti. Obrodný proces nepřichází s ničím příliš novým. Přináší myšlenky a náměty, z nichž mnohé jsou starší než omyly našeho socialismu a jiné vznikaly pod povrchem viditelného dění, měly být dávno vysloveny, byly však potlačovány. Nemějme iluzi, že tyto myšlenky vítězí teď silou pravdy. O jejich vítězství rozhodla spíš slabost starého vedení, které se zřejmě napřed muselo unavit dvacetiletým vládnutím, v němž mu nikdo nebránil. Zřejmě musely do plné formy dozrát všechny vadné prvky skryté už v základech a ideologii tohoto systému. Nepřeceňujme proto význam kritiky z řad spisovatelů a studentů. Zdrojem společenským změn je hospodářství. Správné slovo má svůj význam, jen když je řečeno za poměrů, které jsou už správně opracovány. Správně opracované poměry - tím se u nás, bohužel, musí rozumět naše celková chudoba a úplný rozpad starého systému vládnutí, kdy se v klidu a míru na náš účet zkompromitovali politikové jistého typu. Pravda tedy nevítězí, pravda prostě zbývá, když se všecko ostatní prošustruje ! Není tudíž důvodu k národní vítězoslávě, je pouze důvod k nové naději.

Obracíme se na vás v tomto okamžiku naděje, která je však pořád ohrožena. Trvalo několik měsíců, než mnozí z nás uvěřili, že mohou promluvit, mnozí však nevěří ani teď. Ale promluvili jsme už tak a tolik se odkryli, že svůj úmysl zlidštit režim musíme jedině dokončit. Jinak by odplata starých sil byla krutá. Obracíme se hlavně na ty, kdo zatím jen čekali. Čas, který nastává, bude rozhodující pro mnoho let.

Čas, který nastává, je léto s prázdninami a dovolenými, kdy se nám po starém zvyku bude chtít všeho nechat. Vsaďme se však, že naši milí odpůrci si nedopřejí letního oddechu, budou mobilizovat své zavázané lidi a budou si už teď chtít zařídit klidné svátky vánoční! Dávejme tedy pozor, co se bude dít, snažme se tomu porozumět a odpovídat. Vzdejme se nemožného požadavku, aby nám vždycky někdo vyšší podal k vědem jediný výklad a jediný prostý závěr. Každý si bude muset udělat své závěry, na svou odpovědnost. Společné shodné závěry je možno najít jen v diskusi, k níž je nutná svoboda slova, která je vlastně jedinou naší demokratickou vymožeností letošního roku.

Do příštích dnů však musíme jít také s vlastní iniciativou a vlastními rozhodnutími.

Především budeme odporovat názorům, kdyby se vyskytly, že je možné dělat nějakou demokratickou obrodu bez komunistů, popřípadě proti nim. Bylo by to nespravedlivé, ale také nerozumné. Komunisté mají vybudované organizace, v těch je třeba podpořit pokrokové křídlo. Mají zkušené funkcionáře, mají konečně pořád v ruce rozhodující páky a tlačítka. Před veřejností však stojí jejich Akční program, který je také programem prvního vyrovnání největší nerovnosti, a nikdo jiný nemá žádný stejně konkrétní program. Je třeba požadovat, aby se svými místními akčními programy přišli před veřejnost v každém okrese a v každé obci. Tu náhle půjde o velmi obyčejné a dávno čekané správné činy. KSČ se připravuje na sjezd, který zvolí nový ústřední výbor. Žádejme, aby byl lepší než ten dnešní. Říká-li dnes komunistická strana, že své vedoucí postavení napříště chce opírat o důvěru občanů a ne o násilí, věřme tomu potud, pokud můžeme věřit lidem, které už teď posílá jako delegáty na okresní a krajské konference.

V poslední době jsou lidé zneklidněni, že se postup demokratizace zastavil. Tento pocit je zčásti projevem únavy ze vzrušeného dění, zčásti odpovídá faktu : minula sezóna překvapivých odhalení, vysokých demisí a opájivých projevů nebývalé slovní smělosti. Zápas sil se však jen poněkud skryl, bojuje se o obsah a znění zákonů, o rozsah praktických opatření. Krom toho novým lidem, ministrům, prokurátorům, předsedům a tajemníkům, musíme popřát čas na práci. Mají právo na ten čas, aby se mohli buďto osvědčit, nebo znemožnit. Krom toho v centrálních politických orgánech nelze dnes čekat víc. Stejně projevily nechtě podivuhodné ctnosti.

Praktická kvalita příští demokracie závisí na tom, co se stane s podniky a v podnicích. Při všech našich diskusích nakonec nás mají v rukou hospodáři. Dobré hospodáře je třeba hledat a prosazovat. Je pravda, že všichni jsme ve srovnání s rozvinutými zeměmi špatně placeni a někteří ještě hůř. Můžeme žádat víc peněz - které lze natisknout a tím znehodnotit. Žádejme však spíše ředitele a předsedy, aby nám vyložili, co a za kolik chtějí vyrábět, komu a zač prodávat, kolik se vydělá, co z toho se vloží do modernizace výroby a co je možno rozdělit. Pod zdánlivě nudnými titulky běží v novinách odraz velmi tvrdého boje o demokracii nebo koryta. Do toho mohou dělníci jakožto podnikatelé zasáhnout tím, koho zvolí do podnikatelských správ a podnikových rad. Jakožto zaměstnanci mohou pro sebe udělat nejlíp, když si za své zástupce zvolí do odborových orgánů své přirozené vůdce, schopné a čestné lidi bez ohledu na stranickou příslušnost.

Jestliže nelze v této době čekat od nynějších centrálních politických orgánů víc, je třeba dosáhnout více v okresech a obcích. Žádejme odchod lidí, kteří zneužili své moci, poškodili veřejný majetek, jednali nečestně nebo krutě. Je třeba vynalézat způsoby, jak je přimět k odchodu. Například : veřejná kritika, rezoluce, demonstrace, demonstrační pracovní brigády, sbírka na dary pro ně do důchodu, stávka, bojkot jejich dveří. Odmítat však způsoby nezákonné, neslušné a hrubé, jelikož by jich využili k ovlivňování Alexandra Dubčeka. Náš odpor k psaní hrubých dopisů musí být tak všeobecný, aby každý takový dopis, který ještě dostanou, bylo možno považovat za dopis, který si dali poslat sami. Oživujme činnost Národní fronty. Požadujme veřejná zasedání národních výborů. K otázkám, které nechce nikdo znát,  ustavujme vlastní občanské výbory a komise. Je to prosté : sejde se několik lidí, zvolí předsedu, vedou řádně zápis, publikují svůj nález, žádají řešení, nedají se zakřiknout. Okresní a místní tisk, který většinou zdegeneroval na úřední troubu, proměňujme v tribunu všech kladných politických sil, žádejme ustavení redakčních rad ze zástupců Národní fronty nebo zakládejme jiné noviny. Ustavujme výbory na obranu svobody slova. Organizujme při svých shromážděních vlastní pořádkovou službu. Uslyšíme-li divné zprávy, ověřujme si je, vysílejme delegace na kompetentní místa, jejich odpovědi zveřejňujme třeba na vratech. Podporujme orgány bezpečnosti, když stíhají skutečnou trestnou činnost, naší snahou není způsobit bezvládí a stav všeobecné nejistoty. Vyhýbejme se sousedským hádkám, neožírejme se v politických souvislostech. Prozrazujme fízly.

Oživený letní pohyb po celé republice vyvolá zájem o uspořádání státoprávního vztahu mezi Čechy a Slováky. Považujeme federalizaci za způsob řešení národnostní otázky, jinak je to jen jedno z významných opatření k demokratizaci poměrů. Toto opatření samo o sobě nemusí ani Slovákům přinést lepší život. Režim - v českých zemích zvlášť a na Slovensku zvlášť - se tím ještě neřeší. Vláda stranicko-státní byrokracie může trvat, na Slovensku dokonce o to líp, že jako "vybojovala větší svobodu".

Veliké znepokojení v poslední době pochází z možnosti, že by do našeho vývoje zasáhly zahraniční síly. Tváří v tvář všem přesilám můžeme jedině trvat slušně na svém a nezačínat si. Své vládě můžeme dát najevo, že za ní budeme stát třeba se zbraní, pokud bude dělat to, k čemu jí dáme mandát, a své spojence můžeme ujistit, že spojenecké, přátelské a obchodní smlouvy dodržíme. Naše podrážděné výtky a neargumentovaná podezření musí jen ztěžovat postavení naší vlády, aniž nám pomohou. Rovnoprávné vztahy si beztak můžeme zajistit jedině tím, že zkvalitníme své vnitřní poměry a dovedeme obrodný proces tak daleko, že jednou ve volbách si zvolíme státníky, kteří budou mít tolik statečnosti, cti a politického umu, aby takové vztahy ustavili a udrželi. To je ostatně problém naprosto všech vlád všech menších států světa ! Letošního jara vrátila se nám znovu jako po válce velká příležitost. Máme znovu možnost vzít do rukou naši společnou věc, která má pracovní název socialismus, a dát jí tvar, který by lépe odpovídal naší kdysi dobré pověsti i poměrně dobrému mínění, jež jsme o sobě původně měli. Toto jaro právě skončilo a už se nevrátí. V zimě se všecko dovíme. Tím končí toto naše prohlášení k dělníkům, zemědělcům, úředníkům, umělcům, vědcům, technikům a všem. Napsáno bylo z podnětu vědců.
HEREDOC

# puts two_thousand_words
divided_words = two_thousand_words.split(/(\s|,|\.|\?|\!|\(|\{|\[|\]|\}|\))/)

# p divided_words

total_sentences = 0
total_words = 0
words_4plus = 0
longest_word = 0
word_lengths = {}
(0..(divided_words.length - 1)).each do |i|
  word = divided_words[i]

  # it's tricky to do it exactly
  total_sentences += 1 if word == '.' || word == '?' || word == '!'

  next unless word =~ /\w+/

  total_words += 1
  words_4plus += 1 if word.length > 3
  longest_word = word.length if word.length > longest_word
  if word_lengths[word.length]
    word_lengths[word.length] += 1
  else
    word_lengths[word.length] = 1
  end
end

# p word_lengths

def word_averages(hash, total_words)
  total = 0
  hash.keys.each { |k| total += k * hash[k] }
  total / total_words
end

report = {total_words: total_words,
          total_sentences: total_sentences,
          longest_word: longest_word,
          average_word_length: word_averages(word_lengths, total_words),
          words_longer_than_three_chars: words_4plus
         }

p report.to_json

# 3 ---------------------------------------------------------------
puts 'question 3'

def get_minutes_between(from_time, to_time)
  time_regex = /(\:|am|pm)/
  fhrs, fdiv, fmins, fap = from_time.split time_regex
  thrs, tdiv, tmins, tap = to_time.split time_regex

  start =  (((fap == 'pm' ? 12 : 0) + fhrs.to_i) * 60) + fmins.to_i
  finish = (((tap == 'pm' ? 12 : 0) + thrs.to_i) * 60) + tmins.to_i
  # p [fhrs, fmins, fap, '   ', thrs, tmins, tap, '  ', start, finish]
  (finish - start).abs
end

puts get_minutes_between('11:30am', '9:55pm')

# 4 ---------------------------------------------------------------
puts 'question 4'

class Array
  def heapsort
    self.dup.heapsort!
  end

  def heapsort!
    # in pseudo-code, heapify only called once, so inline it here
    ((length - 2) / 2).downto(0) {|start| siftdown(start, length - 1)}

    # "end" is a ruby keyword
    (length - 1).downto(1) do |end_|
      self[end_], self[0] = self[0], self[end_]
      siftdown(0, end_ - 1)
    end
    self
  end

  def siftdown(start, end_)
    root = start
    loop do
      child = root * 2 + 1
      break if child > end_
      # puts "self === #{root.to_s} "
      # p self
      child += 1 if child + 1 <= end_ && self[child].length < self[child + 1].length

      break unless self[root].length < self[child].length

      self[root], self[child] = self[child], self[root]
      root = child
    end
  end
end

arr2 = ['numbers-in-words', 'one', 'twoo', 'three']
p arr2.heapsort
p arr2.heapsort[-3]

# 5 ---------------------------------------------------------------
puts 'question 5'

# before
# def height_in_cm(feet, inches)
#   feet_as_inches = feet * 12
#   total_inches = inches + feet_as_inches
#   cm = total_inches * 2.54
#   return cm
# end

# after
def height_in_cm(feet, inches)
  2.54 * (inches + feet * 12)
end

puts height_in_cm(6, 1)

# 6 ---------------------------------------------------------------
puts 'question 6'

def round_odd_even(n)
  # ends with .5
  if (n).modulo(1).round(2) == 0.5
    if n.to_i.odd?
      n.ceil
    else
      n.floor
    end
  else
    n
  end
end

numbers = [1.2, 3.5, 4.9, 5.4, 6.5, 7.1]
numbers.each { |n| puts "#{n}  #{round_odd_even n}" }

# 7 ---------------------------------------------------------------
puts 'question 7'
