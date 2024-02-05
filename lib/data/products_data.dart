//import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:nutrients_app/models/product.dart';
import 'package:nutrients_app/models/category.dart';

const categories = [
  Category(
    id: 'vegetable',
    title: 'Warzywa',
    color: Colors.red,
  ),
  Category(id: 'fruit', title: 'Owoce', color: Colors.lightGreen),
  Category(id: 'other', title: 'Inne', color: Colors.blueGrey),
];

const productsData = [
  //vegetablesProducts
  Product(
      id: 'v1',
      title: 'Bakłażan',
      imageUrl:
          'https://s3.przepisy.pl/przepisy3ii/img/variants/1280x0/baklazan578846.jpg',
      category: 'vegetable',
      description:
          'Bakłażan, również znany jako aubergine lub bakłażan, to warzywo z rodziny psiankowatych, o charakterystycznej fioletowej skórce. Jest popularny w kuchni śródziemnomorskiej i azjatyckiej ze względu na swój intensywny smak i bogactwo tekstur.',
      nutrients:
          'Witamina C, Witamina K, Witamina A, Kwas foliowy, Potas, Wapń, Magnez, Żelazo',
      isVitaminC: true,
      isVitaminK: true,
      isVitaminE: false,
      isVitaminA: true,
      isFolates: true,
      isPotassium: true,
      isCalcium: true,
      isMagnesium: true,
      isIron: true,
      isProteinSource: false),
  Product(
      id: 'v2',
      title: 'Ciecierzyca',
      imageUrl:
          'https://cdn.galleries.smcloud.net/t/galleries/gf-yxH7-oBHm-iGWC_ciecierzyca-wlasciwosci-i-wartosci-odzywcze-cieciorki-664x442.jpg',
      category: 'vegetable',
      description:
          'Ciecierzyca znana także jako groch włoski lub pois chiche, to roślina strączkowa z rodziny bobowatych. Jej nasiona są powszechnie wykorzystywane w kuchni, zwłaszcza w kuchni śródziemnomorskiej, indyjskiej i bliskowschodniej. Jest ceniona nie tylko za swoje wartości odżywcze, ale także za wszechstronne zastosowanie w kuchni oraz za możliwość wykorzystania w różnych dietach i stylach żywieniowych.',
      nutrients:
          'Witamina C, Kwas foliowy, Potas, Wapń, Magnez, Żelazo, Źródło białka',
      isVitaminC: true,
      isVitaminK: false,
      isVitaminE: false,
      isVitaminA: false,
      isFolates: true,
      isPotassium: true,
      isCalcium: true,
      isMagnesium: true,
      isIron: true,
      isProteinSource: true),
  Product(
      id: 'v3',
      title: 'Cukinia',
      imageUrl:
          'https://profit.sklepkupiec.pl/17855-large_default/cukinia-zielona.jpg',
      category: 'vegetable',
      description:
          'Cukinia jest lekkostrawna, a potas w niej zawarty zapobiega zatrzymywaniu się wody w organizmie. Zalecana jest w diecie przeciwnowotworowej. Cukinia odkwasza organizm, ponieważ ma właściwości alkalizujące, dzięki czemu zapobiega zakwaszaniu organizmu.',
      nutrients:
          'Witamina: A, C, witaminy z grupy B, fosfor, wapń, żelazo, sód, potas i jod',
      isVitaminC: true,
      isVitaminK: false,
      isVitaminE: false,
      isVitaminA: true,
      isFolates: true,
      isPotassium: true,
      isCalcium: true,
      isMagnesium: false,
      isIron: true,
      isProteinSource: false),
  Product(
      id: 'v4',
      title: 'Dynia',
      imageUrl:
          'https://www.delikatesyemis.pl/content/images/thumbs/0038145_dynia-luz_550.png',
      category: 'vegetable',
      description:
          'Dynia - Jej prozdrowotne działanie wynika z zawartości cennych składników odżywczych. Co ważne, dynia nie traci właściwości po obróbce termicznej. Warzywo wykazuje działanie przeciwzapalne oraz chroni przed poważnymi chorobami, w tym nowotworami. Dynia wpływa korzystnie na funkcjonowanie narządu wzroku.',
      nutrients:
          'Witaminy: A, C, E, K, witaminy z grupy B, wapń, magnez, żelazo, fosfor, potas, sód, cynk',
      isVitaminC: true,
      isVitaminK: true,
      isVitaminE: true,
      isVitaminA: true,
      isFolates: true,
      isPotassium: true,
      isCalcium: true,
      isMagnesium: true,
      isIron: true,
      isProteinSource: false),
  Product(
      id: 'v5',
      title: 'Fasola',
      imageUrl:
          'https://www.gryczanka.pl/images/3059af6a593ffa6bfb6c8ccb28a4049e.jpg',
      category: 'vegetable',
      description:
          'Jest bogatym źródłem białka. Fasola ceniona jest ze względu na dużą zawartość błonnika, który nie jest trawiony przez ludzki organizm. Pomaga w prawidłowym funkcjonowaniu układu nerwowego i pokarmowego.',
      nutrients:
          'Witamina A, witaminy z grupy B, żelazo, wapń, potas, magnez, miedź, mangan, cynk i fosfor, źródło białka',
      isVitaminC: false,
      isVitaminK: false,
      isVitaminE: false,
      isVitaminA: true,
      isFolates: true,
      isPotassium: true,
      isCalcium: true,
      isMagnesium: true,
      isIron: true,
      isProteinSource: true),
  Product(
      id: 'v6',
      title: 'Jarmuż',
      imageUrl:
          'https://www.wapteka.pl/blog_zdjecia/jarmuz-wlasciwosci-zdrowotne-i-najlepsze-przepisy-czy-warto-jesc-jarmuz.webp?20230714165904',
      category: 'vegetable',
      description:
          'Zawiera mnóstwo błonnika, białka oraz całą skarbnicę witamin, w tym rzadko występującą w warzywach witaminę K. Witamina K to doskonała tarcza ochronna przed pojawieniem się niektórych zmian nowotworowych, przede wszystkim raka wątroby, pęcherzyka żółciowego, piersi i jajników. Jedzenie jarmużu poprawia pracę układu sercowo-naczyniowego, udrażnia naczynia krwionośne i obniża ciśnienie tętnicze.',
      nutrients:
          'Witamina K, C, witaminy z grupy B, sole mineralne, wapń, magnez, żelazo, cynk i fosfor',
      isVitaminC: true,
      isVitaminK: true,
      isVitaminE: false,
      isVitaminA: false,
      isFolates: true,
      isPotassium: false,
      isCalcium: true,
      isMagnesium: true,
      isIron: true,
      isProteinSource: false),
  Product(
      id: 'v7',
      title: 'Kalafior',
      imageUrl:
          'https://polskikoszyk.pl/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/277500/kalafior-1-szt-zielenina-prosto-z-sadu_0.jpg',
      category: 'vegetable',
      description:
          'Kalafior jest bogaty w błonnik i wodę. Oba składniki są ważne w zapobieganiu zaparciom, utrzymaniu prawidłowej pracy przewodu pokarmowego i zmniejszaniu ryzyka raka okrężnicy. Badania potwierdzają, że warzywa z rodziny krzyżowych, takie jak kalafior, są szczególnie przydatne w zapobieganiu rakowi piersi. Wykazały również, że błonnik pokarmowy może również pomóc w regulacji układu odpornościowego i stanów zapalnych.',
      nutrients: 'Witamina C, K, B6, B9, potas, fosfor, magnez, wapń',
      isVitaminC: true,
      isVitaminK: true,
      isVitaminE: false,
      isVitaminA: false,
      isFolates: true,
      isPotassium: true,
      isCalcium: true,
      isMagnesium: true,
      isIron: false,
      isProteinSource: false),
  Product(
      id: 'v8',
      title: 'Kapusta',
      imageUrl:
          'https://aptekazawiszy.pl/img/ident/freshpoint-green-cabbage-1000x10',
      category: 'vegetable',
      description:
          'Kapusta ma właściwości przeciwbakteryjne, przeciwutleniające, oczyszczające, wspomagające pamięć, przeciwzapalne, moczopędne, antyseptyczne, gojące, przeciwwrzodowe, tonizujące, regenerujące organizm. Świetnie wzmacnia odporność, działa przeciwnowotworowo.Wspomaga rekonwalescencję, pomaga odzyskać siły po chorobach, oczyszcza wątrobę. Obniża też poziom cukru we krwi.',
      nutrients:
          'Indolo-3-karbinol, izotiocyjanina, sulforan, witaminy C, A, E, K, U, witaminy z grupy B w tym B9, żelazo, magnez, miedź, siarka, potas, śluzy roślinne, luteina, błonnik, arsen.',
      isVitaminC: true,
      isVitaminK: true,
      isVitaminE: true,
      isVitaminA: true,
      isFolates: true,
      isPotassium: true,
      isCalcium: false,
      isMagnesium: true,
      isIron: true,
      isProteinSource: false),
  Product(
      id: 'v9',
      title: 'Papryka',
      imageUrl:
          'https://esklep.spolembialystok.pl/238-large_default/papryka-czerwona-kg.jpg',
      category: 'vegetable',
      description:
          'Witaminy zawarte w papryce poprawiają stan skóry, włosów i paznokci.Regularne spożywanie papryki wpływa na obniżenie ciśnienia krwi. Spore ilości zawartego w niej błonnika pokarmowego wpływają pozytywnie na układ pokarmowy.',
      nutrients: 'Prowitamina A, witamina C, E, B9, wapń, potas',
      isVitaminC: true,
      isVitaminK: false,
      isVitaminE: true,
      isVitaminA: true,
      isFolates: true,
      isPotassium: true,
      isCalcium: true,
      isMagnesium: false,
      isIron: false,
      isProteinSource: false),
  Product(
      id: 'v10',
      title: 'Pomidor',
      imageUrl:
          'https://profit.sklepkupiec.pl/17852-thickbox_default/pomidor-import.jpg',
      category: 'vegetable',
      description:
          'Pomidory to skarbnica witamin i minerałów. Są pełne antyoksydantów, dzięki czemu chronią skórę przed procesami starzenia się skóry. Pomidory, szczególnie czerwone są źródłem związków fenolowych, np. resweratrolu. Resweratrol zmniejsza napięcie mięśni gładkich naczyń krwionośnych, hamuje utlenienia LDL, opóźnia procesy starzenia się skóry, posiada właściwości przeciwzapalne, wzmacnia układ odpornościowy i zmniejsza apetyt. Znajdziemy w nich także melatoninę, która korzystnie wpływa na sen i samopoczucie. Zawarte w pomidorach pektyny i kwasy działają przeciwmiażdżycowo i obniżają zły cholesterol.',
      nutrients:
          'Witaminy z grupy B, wit. C, PP, K, B9 i kwas szczawiowy, cynk, fosfor, fluor, jod, karoten, kobalt, magnez, mangan, miedź, sód, żelazo.',
      isVitaminC: true,
      isVitaminK: true,
      isVitaminE: false,
      isVitaminA: false,
      isFolates: true,
      isPotassium: false,
      isCalcium: false,
      isMagnesium: true,
      isIron: true,
      isProteinSource: false),
  Product(
      id: 'v11',
      title: 'Soczewica',
      imageUrl:
          'https://planetarianie.bio/userdata/public/gfx/641/87_m_soczewica-czerwona-bio.jpg',
      category: 'vegetable',
      description:
          'Soczewica jest bogata w błonnik, który wspomaga regularne wypróżnienia i rozwój zdrowych bakterii jelitowych. Pomaga zachować uczucie sytości i energii, promuje zrównoważony poziom cukru we krwi i może korzystnie wpływać na ogólne trawienie. Oprócz tego, że błonnik pokarmowy zapobiega zaparciom, wpływa również na poprawę odporności i zdrowia układu pokarmowego. Diety bogate w błonnik są skorelowane z mniejszą liczbą przypadków chorób serca, raka, cukrzycy, zapalenia stawów i różnych zaburzeń trawiennych.',
      nutrients:
          'Witaminy: B1, B2, B3, B6, B9, żelazo, mangan, fosfor, potas, kwas pantotenowy, magnez, cynk, miedź, selen',
      isVitaminC: false,
      isVitaminK: false,
      isVitaminE: false,
      isVitaminA: false,
      isFolates: true,
      isPotassium: true,
      isCalcium: false,
      isMagnesium: true,
      isIron: true,
      isProteinSource: true),
  Product(
      id: 'v12',
      title: 'Soja',
      imageUrl:
          'https://cdn.galleries.smcloud.net/t/galleries/gf-gp7s-cwn5-kdgz_soja-wlasciwosci-witaminy-dlaczego-soja-jest-zdrowa-jpg-1920x1080-nocrop.jpg',
      category: 'vegetable',
      description:
          'Wbrew powszechnej opinii, to roślina, która dostarcza naszemu organizmowi wiele korzyści. Chodzi nie tylko o wyżej wspomniane pierwiastki. Wiele badań dowodzi, że regularne spożywanie produktów sojowych wiąże się z mniejszą zachorowalnością na raka piersi i prostaty. Nie można również pominąć licznych izoflawonów, które redukują ryzyko wystąpienia chorób układu sercowo-naczyniowego, w tym choroby wieńcowej i miażdżycy. Soja to również naturalny sprzymierzeniec w zwiększaniu gęstości mineralnej kości.',
      nutrients:
          'Witaminy z grupy B i składników mineralnych, głównie potasu, fosforu, wapnia, magnezu i żelaza, źródło białka',
      isVitaminC: false,
      isVitaminK: false,
      isVitaminE: false,
      isVitaminA: false,
      isFolates: true,
      isPotassium: true,
      isCalcium: true,
      isMagnesium: true,
      isIron: true,
      isProteinSource: true),
  Product(
      id: 'v13',
      title: 'Szpinak',
      imageUrl:
          'https://prostehistorie.com.pl/wp-content/uploads/2020/06/ph-artykul-szpinak-wlasciwosci-odzywcze-i-wplyw-na-zdrowie-img.jpg',
      category: 'vegetable',
      description:
          'Dzięki przeciwutleniaczom zawartym w liściach szpinaku warzywo to jest polecane jako dobra ochrona przed chorobami nowotworowymi i miażdżycą. Jako że w szpinaku znajduje się sporo magnezu, jego jedzenie zaleca się osobom zestresowanym i znerwicowanym. Ma własności uspokajające oraz zapobiega bólom głowy (w tym bólom migrenowym). Jedzenie szpinaku chroni też przed chorobami układu krążenia.',
      nutrients: 'Witaminy A, E, B6, B9 oraz K, żelazo i magnez',
      isVitaminC: true,
      isVitaminK: true,
      isVitaminE: true,
      isVitaminA: true,
      isFolates: true,
      isPotassium: false,
      isCalcium: false,
      isMagnesium: true,
      isIron: true,
      isProteinSource: false),
  Product(
      id: 'v14',
      title: 'Ziemniak',
      imageUrl:
          'https://bazarekpolski.pl/wp-content/uploads/2022/05/Ziemniaki-brudne-ma-e-opakowanie-do-5-kg-600x600.png',
      category: 'vegetable',
      description:
          'Zawartość błonnika pokarmowego w ziemniakach sprawia, że poprawiają trawienie i perystaltykę jelit. Błonnik powoduje także zwiększenie objętości treści pokarmowej, dzięki czemu zapewnia uczucie sytości. Dodatkowo zapewnia neutralizuje zakwaszające działanie produktów zbożowych i mięs.',
      nutrients:
          'Witamina A, C, witaminy z grupy B, cynk, fosfor, jod, magnez, mangan, miedź,  foliany, beta-karoten.',
      isVitaminC: true,
      isVitaminK: false,
      isVitaminE: false,
      isVitaminA: true,
      isFolates: true,
      isPotassium: false,
      isCalcium: false,
      isMagnesium: true,
      isIron: false,
      isProteinSource: false),
  Product(
      id: 'f1',
      title: 'Arbuz',
      imageUrl:
          'https://polmar.net/wp-content/uploads/2018/08/arbuz-600x600.jpg',
      category: 'fruit',
      description:
          'Arbuz zawiera dużo wody (92%) i niewielkie ilości witamin i składników mineralnych, jest jednak bogaty w przeciwutleniacze, takie jak likopen, beta-karoten, luteina, zeaksantyna i kryptoksantyna, które pomagają chronić organizm przed rozwojem chorób nowotworowych.',
      nutrients: 'Witamina C, Witamina A, Potas, Wapń, Magnez',
      isVitaminC: true,
      isVitaminK: false,
      isVitaminE: false,
      isVitaminA: true,
      isFolates: false,
      isPotassium: true,
      isCalcium: true,
      isMagnesium: true,
      isIron: false,
      isProteinSource: false),
  Product(
      id: 'f2',
      title: 'Awokado',
      imageUrl:
          'https://cdn.galleries.smcloud.net/t/galleries/gf-aJaC-6KKX-qgG5_avocado-leczy-i-pomaga-664x442.jpg',
      category: 'fruit',
      description:
          'Bogate źródło jednonienasyconych kwasów tłuszczowych. Wysoka zawartość potasu w awokado ma natomiast korzystny wpływ na poziom ciśnienia krwi, pracę serca oraz prawidłową pracę układu krążenia. Awokado w diecie będzie miało również korzystny wpływ na nasz wzrok, ponieważ zawiera luteinę i zeaksantynę. Awokado dba również o utrzymanie prawidłowego poziomu dobrego cholesterolu, czyli cholesterolu HDL.',
      nutrients: 'Witaminy: A, C i E, witaminy z grupy B w tym B9',
      isVitaminC: true,
      isVitaminK: false,
      isVitaminE: true,
      isVitaminA: true,
      isFolates: true,
      isPotassium: false,
      isCalcium: false,
      isMagnesium: false,
      isIron: false,
      isProteinSource: false),
  Product(
      id: 'f3',
      title: 'Banan',
      imageUrl:
          'https://pl.lyovit.com/cdn/shop/products/banan_8f43351d-4cd9-4c4d-9daf-e20749276749_1024x1024.jpg?v=1417774878',
      category: 'fruit',
      description:
          'Banany są naturalnym źródłem potasu dzięki czemu pomagają w normalizacji poziomu ciśnienia krwi, łagodzą napięcie w żyłach i tętnicach, dzięki czemu nasze wszystkie narządy są o wiele lepiej dotlenione.  Banan reguluje pracę przewodu pokarmowego, zwiększa wchłanianie składników odżywczych, a także odgrywa ważną rolę w profilaktyce chorób.',
      nutrients:
          'Witaminy: A, C, witaminy z grupy B, E, K, wapń, potas, magnez, fosfor',
      isVitaminC: true,
      isVitaminK: true,
      isVitaminE: true,
      isVitaminA: true,
      isFolates: true,
      isPotassium: true,
      isCalcium: true,
      isMagnesium: true,
      isIron: false,
      isProteinSource: false),
  Product(
      id: 'f4',
      title: 'Borówka amerykańska',
      imageUrl: 'https://naszekrzewy.pl/img/products/45/5/5_max.jpg',
      category: 'fruit',
      description:
          'Jej owoce poprawiają wzrok, regulują trawienie, są pomocne w walce z miażdżycą oraz pasożytami jelitowymi u dzieci. Duża zawartość antyoksydantów i antocyjanów sprawia, że borówka amerykańska jest pomocna w profilaktyce nowotworowej. Fitoestrogeny i błonnik zawarte w borówce, obniżają poziom złego cholesterolu (LDL) oraz zwiększają poziom dobrego cholesterolu (HDL).',
      nutrients:
          'Witaminy A, B, C, E oraz PP, cynk, potas, selen, miedź, magnez, żelazo, wapń oraz bardzo dużą ilość antyoksydantów',
      isVitaminC: true,
      isVitaminK: true,
      isVitaminE: true,
      isVitaminA: true,
      isFolates: false,
      isPotassium: true,
      isCalcium: false,
      isMagnesium: true,
      isIron: false,
      isProteinSource: false),
  Product(
      id: 'f5',
      title: 'Cytryna',
      imageUrl:
          'https://pachnacaszafa.pl/wp-content/uploads/2023/03/Cytryna.jpg',
      category: 'fruit',
      description:
          'Owoce, które zawierają unikalne związki flawonoidowe, które wykazują właściwości przeciwutleniające i przeciwnowotworowe. Są bogate w witaminę C, która niezbędna do funkcjonowania silnego układu odpornościowego, reguluje pracę serca oraz zmniejsza stany zapalne. ',
      nutrients:
          'Wapń, żelazo, magnez, fosfor, potas, selen, witamina C, witamina B9 , cholina, witamina A, luteina + zeaksantyna ',
      isVitaminC: true,
      isVitaminK: false,
      isVitaminE: false,
      isVitaminA: true,
      isFolates: true,
      isPotassium: true,
      isCalcium: true,
      isMagnesium: true,
      isIron: true,
      isProteinSource: false),
  Product(
      id: 'f6',
      title: 'Gruszka',
      imageUrl:
          'https://bazarekpolski.pl/wp-content/uploads/2020/11/gruszka-lukasowka-1.jpg',
      category: 'fruit',
      description:
          '- Gruszki, dzięki zawartości boru, korzystnie wpływają na pracę mózgu. Ale bor pełni też wiele innych, istotnych funkcji w organizmie, m.in. odpowiada za prawidłowy transport wapnia i zapobiega ubytkom tego minerału z kości.',
      nutrients:
          'Witamina A, B1, B2, B6, C i PP, potas, fosfor, wapń, magnez, sód, miedź, żelazo oraz pewne ilości boru i jodu',
      isVitaminC: true,
      isVitaminK: false,
      isVitaminE: false,
      isVitaminA: true,
      isFolates: false,
      isPotassium: true,
      isCalcium: true,
      isMagnesium: true,
      isIron: true,
      isProteinSource: false),
  Product(
      id: 'f7',
      title: 'Jabłko',
      imageUrl: 'https://lekarzebezkolejki.pl/blog/zdjecie/jablka.jpeg',
      category: 'fruit',
      description:
          'Jedzenie jabłek wspiera ogólną odporność organizmu. Owoce mają również właściwości moczopędne, przez co zmniejszają obrzęki nóg, regulują pracę wątroby, wpływają na pracę mięśni, serca i układu nerwowego.',
      nutrients:
          'Witamina C i potas, a także fosfor, sod, wapń, żelazo i magnez, błonnik, pektyny',
      isVitaminC: true,
      isVitaminK: false,
      isVitaminE: false,
      isVitaminA: false,
      isFolates: false,
      isPotassium: true,
      isCalcium: true,
      isMagnesium: true,
      isIron: true,
      isProteinSource: false),
  Product(
      id: 'f8',
      title: 'Limonka',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/6/68/Lime-Whole-Split.jpg',
      category: 'fruit',
      description:
          'Zawiera bioflawonoidy, odpowiedzialne za niszczenie wolnych rodników. Pomaga w przypadku bólów głowy, łagodzi drażliwość i uspokaja. Limetka jest cennym sojusznikiem w walce z wieloma chorobami, między innymi anemią, chorobami wątroby, schorzeniami reumatycznymi i układu krążenia, nowotworami, osteoporozą czy zaburzeniami trawienia.',
      nutrients:
          'Witaminy A, C, E, witaminy z grupy B (B1, B2, B3, i B6), potas, sód, wapń, miedź, cynk, żelazo, magnez oraz fosfor',
      isVitaminC: true,
      isVitaminK: false,
      isVitaminE: true,
      isVitaminA: true,
      isFolates: true,
      isPotassium: true,
      isCalcium: true,
      isMagnesium: true,
      isIron: true,
      isProteinSource: false),
  Product(
      id: 'f9',
      title: 'Malina',
      imageUrl:
          'https://www.labor.com.pl/wp-content/uploads/2021/11/jeremy-bezanger-T6yw2uxui88-unsplash-1024x683.jpg',
      category: 'fruit',
      description:
          'Maliny wykorzystuje się w stanach przeziębienia i infekcji. Są dobrym środkiem napotnym i zwalczającym gorączkę. Napary z liści i owoców malin mogą przynieść ulgę kobietom z bolesną menstruacją. Dzięki zawartości w swym składzie ketonów malinowych, które obniżają wagę komórek tłuszczowych i usprawnia metabolizm organizmu.',
      nutrients:
          'Witaminy C, A, B1, B2, B9. tokoferole, karotenoidy i liczne kwasy organiczne, potas, żelazo, magnez, oraz wapń',
      isVitaminC: true,
      isVitaminK: false,
      isVitaminE: false,
      isVitaminA: true,
      isFolates: true,
      isPotassium: true,
      isCalcium: true,
      isMagnesium: true,
      isIron: true,
      isProteinSource: false),
  Product(
      id: 'f10',
      title: 'Pomarańcza',
      imageUrl:
          'https://bazarekpolski.pl/wp-content/uploads/2020/11/pomarancza-600x600.jpg',
      category: 'fruit',
      description:
          'Pomarańcze to dobre źródła witamin z grupy B, które wspomagają prawidłową czynność układu nerwowego. W pomarańczach znaleźć można cenny potas – pierwiastek, który pomaga regulować ciśnienie tętnicze krwi (łagodnie je obniża); korzystnie wpływa także na czynność mięśnia sercowego.',
      nutrients:
          'Witaminy A, C, P, oraz witaminy z grupy B, wapń, magnez, miedź, selen, potas, fosfor, żelazo oraz cynk',
      isVitaminC: true,
      isVitaminK: false,
      isVitaminE: false,
      isVitaminA: true,
      isFolates: true,
      isPotassium: true,
      isCalcium: true,
      isMagnesium: true,
      isIron: true,
      isProteinSource: false),
  Product(
      id: 'f11',
      title: 'Truskawka',
      imageUrl:
          'https://pkik24.pl/images/stories2/warto-wiedziec/truskawka.jpg',
      category: 'fruit',
      description:
          'Truskawki są bogate w błonnik i witaminę C, połączenie składników odżywczych, które doskonale zmniejszają stres oksydacyjny, który może wpłynąć na rozwój chorób serca i nowotworów. Ponadto truskawki są dobrym źródłem potasu, który, jak wykazano, pomaga chronić przed chorobami serca. Wiele badań wskazuje, że truskawki mogą pomóc w zapobieganiu kilku typom nowotworów dzięki ich zdolności do zwalczania stresu oksydacyjnego i stanów zapalnych.',
      nutrients: 'Witamina C, potas, kwas foliowy i błonnik',
      isVitaminC: true,
      isVitaminK: false,
      isVitaminE: false,
      isVitaminA: false,
      isFolates: true,
      isPotassium: true,
      isCalcium: false,
      isMagnesium: false,
      isIron: false,
      isProteinSource: false),
  Product(
      id: 'f12',
      title: 'Winogrono',
      imageUrl:
          'https://polskikoszyk.pl/media/catalog/product/277665/WIN_JASNE.jpg',
      category: 'fruit',
      description:
          'Winogrona to wyjątkowe owoce, ponieważ jako jedne z nielicznych zawierają jod, bez którego tarczyca nie funkcjonuje prawidłowo. Ponadto winogrona redukują nadmierne wydzielanie sebum. ',
      nutrients:
          'Witaminy C, A, E, K oraz witaminy z grupy B, a także szereg minerałów: miedź, chrom, wapń, żelazo, magnez, fosfor, potas, sód, cynk, mangan, selen i fluor',
      isVitaminC: true,
      isVitaminK: true,
      isVitaminE: true,
      isVitaminA: true,
      isFolates: true,
      isPotassium: true,
      isCalcium: true,
      isMagnesium: true,
      isIron: true,
      isProteinSource: false),
  Product(
      id: 'f13',
      title: 'Żurawina',
      imageUrl: 'https://foodsbyann.com/data/include/img/news/1608641717.jpg',
      category: 'fruit',
      description:
          'Zawiera proantocyjanidyny. Proantocyjanidyny powodują także poprawę wzroku, zwiększają elastyczność stawów i przyczyniają się do obniżenia stężenia cholesterolu (obniżają stężenie frakcji LDL, podnosząc jednocześnie stężenie frakcji HDL). Co ciekawe, żurawina chroni nas przed szkodliwym działaniem promieniowania ultrafioletowego. Ponadto żurawina jest jednym z najlepszych źródeł kwercytyny, która pomaga hamować wydzielanie histaminy odpowiedzialnej za reakcje alergiczne. Owoce żurawiny mają kwaśny odczyn, w związku z tym stosowane w terapii infekcji pęcherza moczowego będą obniżać pH, doprowadzając do zmniejszenia namnażania się bakterii.',
      nutrients:
          'Witaminy A, E oraz C, a także sporo witamin z grupy B, potas, fosfor, jod, magnez, żelazo czy sód',
      isVitaminC: true,
      isVitaminK: false,
      isVitaminE: true,
      isVitaminA: true,
      isFolates: true,
      isPotassium: true,
      isCalcium: false,
      isMagnesium: true,
      isIron: true,
      isProteinSource: false),
  Product(
      id: 'o1',
      title: 'Tofu',
      imageUrl:
          'https://sarahsvegankitchen.b-cdn.net/wp-content/uploads/2022/12/homemade-tofu-2-scaled.jpg',
      category: 'other',
      description:
          ' Tofu jest naturalnym produktem roślinnym wytwarzanym z nasion soi. Powstały produkt, czyli tofu naturalne, swoją konsystencją przypomina też twaróg, ale różni się od niego smakiem i składem. O naturalnym tofu, można powiedzieć że nie ma smaku. To właściwie półprodukt, bogaty w składniki odżywcze, który dopiero odpowiednio przyprawiony, zamarynowany czy poddany obróbce termicznej może być samodzielnym daniem lub przystawką.',
      nutrients:
          'Witaminy grupy B w tym B4, witamina E, źródło białka, wapń, fosfor, potas, żelazo i sód',
      isVitaminC: false,
      isVitaminK: false,
      isVitaminE: true,
      isVitaminA: false,
      isFolates: true,
      isPotassium: true,
      isCalcium: true,
      isMagnesium: false,
      isIron: true,
      isProteinSource: true),
  Product(
      id: 'o2',
      title: 'Kotlety sojowe',
      imageUrl:
          'https://static.gotujmy.pl/ZDJECIE_PRZEPISU_ETAP/kotlety-sojowe-a-la-schabowe-140592.jpg',
      category: 'other',
      description:
          'Wbrew powszechnej opinii, to roślina, która dostarcza naszemu organizmowi wiele korzyści. Chodzi nie tylko o wyżej wspomniane pierwiastki. Wiele badań dowodzi, że regularne spożywanie produktów sojowych wiąże się z mniejszą zachorowalnością na raka piersi i prostaty. Nie można również pominąć licznych izoflawonów, które redukują ryzyko wystąpienia chorób układu sercowo-naczyniowego, w tym choroby wieńcowej i miażdżycy. Soja to również naturalny sprzymierzeniec w zwiększaniu gęstości mineralnej kości.',
      nutrients:
          'Witaminy z grupy B i składników mineralnych, głównie potasu, fosforu, wapnia, magnezu i żelaza, źródło białka',
      isVitaminC: false,
      isVitaminK: false,
      isVitaminE: false,
      isVitaminA: false,
      isFolates: true,
      isPotassium: true,
      isCalcium: true,
      isMagnesium: true,
      isIron: true,
      isProteinSource: true),
  Product(
      id: 'o3',
      title: 'Napój owsiany',
      imageUrl:
          'https://profit.sklepkupiec.pl/943345-large_default/sante-organic-napoj-owsiany-1-l.jpg',
      category: 'other',
      description:
          'Mleko owsiane nie jest w rzeczywistości mlekiem, a napojem roślinnym przyrządzonym z owsa. Zawarta w owsie witamina E wykazuje działanie przeciwnowotworowe, spowalnia procesy starzenia i zapobiega chorobom układu krążenia. Z kolei błonnik przyspiesza perystaltykę jelit, reguluje przemianę materii i stabilizuje poziom cukru we krwi. Mleko owsiane jest niskokaloryczne i nie zawiera laktozy czy cholesterolu. Dzięki swoim właściwościom szczególnie polecane jest osobom z nietolerancją laktozy, uczulonym na białko mleka krowiego i cierpiącym na anemię. Pomoże również uspokoić skołatane nerwy i zachować odpowiednią masę ciała.',
      nutrients: 'Witamina A, E, B9, błonnik',
      isVitaminC: false,
      isVitaminK: false,
      isVitaminE: true,
      isVitaminA: true,
      isFolates: true,
      isPotassium: false,
      isCalcium: false,
      isMagnesium: false,
      isIron: false,
      isProteinSource: false),
  Product(
      id: 'o4',
      title: 'Seitan',
      imageUrl:
          'https://yupitsvegan.com/wp-content/uploads/2017/07/homemade-seitan-recipe-seasoned-wheat-gluten-diy.jpg',
      category: 'other',
      description:
          'Nazywany glutenem pszennym, mięsem pszennym, białkiem pszenicy lub po prostu glutenem. Seitan jest wytwarzany przez ugniatanie mąki pszennej z wodą w celu wytworzenia lepkich pasm białka glutenowego.',
      nutrients: 'źródło białka, selen, żelazo, fosfor, wapń, miedź',
      isVitaminC: false,
      isVitaminK: false,
      isVitaminE: false,
      isVitaminA: false,
      isFolates: false,
      isPotassium: false,
      isCalcium: true,
      isMagnesium: false,
      isIron: true,
      isProteinSource: true),
];
