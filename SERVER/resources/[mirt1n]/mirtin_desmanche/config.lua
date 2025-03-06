-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CONFIGS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config = {
    dirty_money = 'dirty_money', -- Nome do item de dinheiro sujo que será dado ao jogador após desmanchar o veículo.
    dismantleTime = 5, -- Tempo em minutos para desmanchar o veículo. Se o tempo esgotar sem finalizar, o processo é cancelado.
    
    custom_vehicles = true, -- Define se a lista de veículos de desmanche será personalizada ou usará uma lista padrão.
    vehicles = { -- Lista personalizada de veículos (habilitada se custom_vehicles = true).
        [`adder`] = { spawn = 'adder', price = 250000 }, -- O valor do veículo é utilizado para calcular o montante final após aplicação de porcentagem.
        [`diablous2`] = { spawn = 'diablous2', price = 250000 }, -- O valor do veículo é utilizado para calcular o montante final após aplicação de porcentagem.
        [`HellcatRed`] = { spawn = 'HellcatRed', price = 250000 }, -- O valor do veículo é utilizado para calcular o montante final após aplicação de porcentagem.
        [`barracks`] = { spawn = 'barracks', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`r1200`] = { spawn = 'r1200', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`jettagli`] = { spawn = 'jettagli', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`160chumbo`] = { spawn = '160chumbo', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`specialtf`] = { spawn = 'specialtf', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`zl1`] = { spawn = 'zl1', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`RYGBus`] = { spawn = 'RYGBus', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`amarok`] = { spawn = 'amarok', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rmodmk7`] = { spawn = 'rmodmk7', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`golf1`] = { spawn = 'golf1', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`golf7`] = { spawn = 'golf7', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`passat`] = { spawn = 'passat', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`BC_Purosangue`] = { spawn = 'BC_Purosangue', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`BC_Escaladeprime`] = { spawn = 'BC_Escaladeprime', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`BC_hycadeevo`] = { spawn = 'BC_hycadeevo', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`p1lbwk`] = { spawn = 'p1lbwk', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`BC_MercedesGT63`] = { spawn = 'BC_MercedesGT63', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`BC_SkylineR34`] = { spawn = 'BC_SkylineR34', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`BC_gt3hycade`] = { spawn = 'BC_gt3hycade', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`HycadeHellcatDurango`] = { spawn = 'HycadeHellcatDurango', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`hycadesti`] = { spawn = 'hycadesti', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`bmci`] = { spawn = 'bmci', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`r8hycade`] = { spawn = 'r8hycade', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`m2hycadev2`] = { spawn = 'm2hycadev2', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`m2prior`] = { spawn = 'm2prior', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`m4hardcore`] = { spawn = 'm4hardcore', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`m4speedhunter`] = { spawn = 'm4speedhunter', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`owlbmwxmforgi2024`] = { spawn = 'owlbmwxmforgi2024', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`chironspeedhunter`] = { spawn = 'chironspeedhunter', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`choilambo`] = { spawn = 'choilambo', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`crownbp`] = { spawn = 'crownbp', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`DBdemondurango`] = { spawn = 'DBdemondurango', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`escaladeprime`] = { spawn = 'escaladeprime', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`pistahycade`] = { spawn = 'pistahycade', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`sf90`] = { spawn = 'sf90', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`hycf40`] = { spawn = 'hycf40', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`GODzDRKHRSESBWB`] = { spawn = 'GODzDRKHRSESBWB', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`machewb`] = { spawn = 'machewb', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rrformulawide`] = { spawn = 'rrformulawide', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`gcmlamboultimae`] = { spawn = 'gcmlamboultimae', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`h2m`] = { spawn = 'h2m', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`fk8`] = { spawn = 'fk8', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`jes21`] = { spawn = 'jes21', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`senna`] = { spawn = 'senna', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`G63Sam`] = { spawn = 'G63Sam', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`2018s650p`] = { spawn = '2018s650p', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`CarsonsHycadeR35`] = { spawn = 'CarsonsHycadeR35', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`nismo20`] = { spawn = 'nismo20', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`s15lunarr`] = { spawn = 's15lunarr', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`r36fp`] = { spawn = 'r36fp', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`r35legend`] = { spawn = 'r35legend', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`silvia666`] = { spawn = 'silvia666', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`silvia`] = { spawn = 'silvia', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`s15silhouette`] = { spawn = 's15silhouette', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`theutopiad`] = { spawn = 'theutopiad', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`mk4brutal`] = { spawn = 'mk4brutal', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`venatus`] = { spawn = 'venatus', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`alpinab7BLACKEDITION`] = { spawn = 'alpinab7BLACKEDITION', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`r8novitec`] = { spawn = 'r8novitec', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`23sharkm2`] = { spawn = '23sharkm2', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`centuria`] = { spawn = 'centuria', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`c8`] = { spawn = 'c8', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rmodzl1`] = { spawn = 'rmodzl1', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`GODzDRIFTCAT`] = { spawn = 'GODzDRIFTCAT', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`vanzhycade`] = { spawn = 'vanzhycade', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`dviperpxxh`] = { spawn = 'dviperpxxh', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`488animated2`] = { spawn = '488animated2', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`giulia_2021`] = { spawn = 'giulia_2021', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`civic2020`] = { spawn = 'civic2020', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`hycfocusrs`] = { spawn = 'hycfocusrs', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`hycadeurus`] = { spawn = 'hycadeurus', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`lbperfs`] = { spawn = 'lbperfs', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`hycadeevo`] = { spawn = 'hycadeevo', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`topcargt63`] = { spawn = 'topcargt63', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`GODz95GSX`] = { spawn = 'GODz95GSX', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`avantr34`] = { spawn = 'avantr34', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`gt3hycade`] = { spawn = 'gt3hycade', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`dc_evo900mansory`] = { spawn = 'dc_evo900mansory', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rs7c821`] = { spawn = 'rs7c821', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`mk4hycade`] = { spawn = 'mk4hycade', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`venuumsupra`] = { spawn = 'venuumsupra', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`TTSTO`] = { spawn = 'TTSTO', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`wmfenyr`] = { spawn = 'wmfenyr', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`17mansorypnmr`] = { spawn = '17mansorypnmr', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`911turbos`] = { spawn = '911turbos', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`2019chiron`] = { spawn = '2019chiron', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rs7beast`] = { spawn = 'rs7beast', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rs666`] = { spawn = 'rs666', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`abfrover`] = { spawn = 'abfrover', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`bentaygam`] = { spawn = 'bentaygam', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`m4c`] = { spawn = 'm4c', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`22m5`] = { spawn = '22m5', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`manhartx7`] = { spawn = 'manhartx7', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`coldevious`] = { spawn = 'coldevious', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`kln`] = { spawn = 'kln', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`chironsupersport22`] = { spawn = 'chironsupersport22', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rrcorquettecustom`] = { spawn = 'rrcorquettecustom', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`21CDemonSC`] = { spawn = '21CDemonSC', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`GODzDRIFTCAT`] = { spawn = 'GODzDRIFTCAT', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`dvc63darwin`] = { spawn = 'dvc63darwin', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`gsts6504`] = { spawn = 'gsts6504', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rapger19`] = { spawn = 'rapger19', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rr21shelbystreet`] = { spawn = 'rr21shelbystreet', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`gemera`] = { spawn = 'gemera', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`gt3demon`] = { spawn = 'gt3demon', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rmodjeepg`] = { spawn = 'rmodjeepg', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`KillerHwak`] = { spawn = 'KillerHwak', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`lbperfs`] = { spawn = 'lbperfs', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`AmgGtrLight`] = { spawn = 'AmgGtrLight', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`evox`] = { spawn = 'evox', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`mstngwide24`] = { spawn = 'mstngwide24', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`polyr36nd`] = { spawn = 'polyr36nd', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`coldani`] = { spawn = 'coldani', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`cayen19`] = { spawn = 'cayen19', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rocket`] = { spawn = 'rocket', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rs7wide`] = { spawn = 'rs7wide', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rx7veilside`] = { spawn = 'rx7veilside', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`sema10X10`] = { spawn = 'sema10X10', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`teslaroad`] = { spawn = 'teslaroad', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`variszupra`] = { spawn = 'variszupra', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`a80`] = { spawn = 'a80', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`zlmk5`] = { spawn = 'zlmk5', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`xc90`] = { spawn = 'xc90', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`18Velar`] = { spawn = '18Velar', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`19gv80`] = { spawn = '19gv80', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`Hycaders6`] = { spawn = 'Hycaders6', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`r8beastedit`] = { spawn = 'r8beastedit', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`ben17`] = { spawn = 'ben17', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`i7x`] = { spawn = 'i7x', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`e92bb`] = { spawn = 'e92bb', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`g81hr`] = { spawn = 'g81hr', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`m4lb2`] = { spawn = 'm4lb2', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`c8p1`] = { spawn = 'c8p1', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`playajoker6.4`] = { spawn = 'playajoker6.4', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`escaladeprime`] = { spawn = 'escaladeprime', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`impronta4`] = { spawn = 'impronta4', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`mach1`] = { spawn = 'mach1', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`gtrh`] = { spawn = 'gtrh', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`animfk8hr`] = { spawn = 'animfk8hr', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`204sWrangler`] = { spawn = '204sWrangler', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`kiasor21`] = { spawn = 'kiasor21', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`vanztt`] = { spawn = 'vanztt', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`gstec1`] = { spawn = 'gstec1', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`manhartx7`] = { spawn = 'manhartx7', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`Zinxy`] = { spawn = 'Zinxy', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`600ltwb`] = { spawn = '600ltwb', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`neonp1`] = { spawn = 'neonp1', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rmodgt63`] = { spawn = 'rmodgt63', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`r36evrim`] = { spawn = 'r36evrim', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`lbwk35`] = { spawn = 'lbwk35', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`23evo911`] = { spawn = '23evo911', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rmodskyline34`] = { spawn = 'rmodskyline34', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`manspana`] = { spawn = 'manspana', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rmodm4`] = { spawn = 'rmodm4', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rmodm4Unikat`] = { spawn = 'rmodm4Unikat', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`Rolls6x6`] = { spawn = 'Rolls6x6', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`teslapd`] = { spawn = 'teslapd', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`gst862`] = { spawn = 'gst862', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`gfuckedsupra`] = { spawn = 'gfuckedsupra', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`suprapandem`] = { spawn = 'suprapandem', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`2019tundrac`] = { spawn = '2019tundrac', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`autobio`] = { spawn = 'autobio', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`20xb7`] = { spawn = '20xb7', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`21rsq8`] = { spawn = '21rsq8', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`74civrswb`] = { spawn = '74civrswb', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`q8hycade`] = { spawn = 'q8hycade', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`q8prior`] = { spawn = 'q8prior', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rs4rk`] = { spawn = 'rs4rk', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rs5mans`] = { spawn = 'rs5mans', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`ckm3e36`] = { spawn = 'ckm3e36', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`m3e92`] = { spawn = 'm3e92', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`ddc69maro`] = { spawn = 'ddc69maro', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`chironsuper`] = { spawn = 'chironsuper', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`ckbmwm4offwhite`] = { spawn = 'ckbmwm4offwhite', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rmodcharger`] = { spawn = 'rmodcharger', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`chargerf8`] = { spawn = 'chargerf8', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`hellcatf9`] = { spawn = 'hellcatf9', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`trx`] = { spawn = 'trx', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`488animated`] = { spawn = '488animated', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`f355`] = { spawn = 'f355', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`fxxevo`] = { spawn = 'fxxevo', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`fnfdaytona`] = { spawn = 'fnfdaytona', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`mustang65`] = { spawn = 'mustang65', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`eleanor`] = { spawn = 'eleanor', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rmodfordgt`] = { spawn = 'rmodfordgt', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`manssupersnake`] = { spawn = 'manssupersnake', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rapger19`] = { spawn = 'rapger19', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`fpaceprior`] = { spawn = 'fpaceprior', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`g63c`] = { spawn = 'g63c', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`gcma4sedan2021`] = { spawn = 'gcma4sedan2021', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`21sierra`] = { spawn = '21sierra', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`GODzRB26SUBI`] = { spawn = 'GODzRB26SUBI', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`gt63mt`] = { spawn = 'gt63mt', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`gta5rp_veh_gtr33`] = { spawn = 'gta5rp_veh_gtr33', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`GC_01INTEG`] = { spawn = 'GC_01INTEG', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`nsx17`] = { spawn = 'nsx17', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`huracanpriorbeast`] = { spawn = 'huracanpriorbeast', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`ikx3mc2021`] = { spawn = 'ikx3mc2021', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`hyundaiveloster`] = { spawn = 'hyundaiveloster', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`ikx3abt20`] = { spawn = 'ikx3abt20', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`demonhawk1`] = { spawn = 'demonhawk1', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`2022jeep`] = { spawn = '2022jeep', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rmodjeepg`] = { spawn = 'rmodjeepg', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`18performante`] = { spawn = '18performante', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`sex6`] = { spawn = 'sex6', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`zentenario`] = { spawn = 'zentenario', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`lc500`] = { spawn = 'lc500', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`madf350lift`] = { spawn = 'madf350lift', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`675lt`] = { spawn = '675lt', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`mansgt`] = { spawn = 'mansgt', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`a45`] = { spawn = 'a45', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`evo9`] = { spawn = 'evo9', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`350z`] = { spawn = '350z', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`waldw222`] = { spawn = 'waldw222', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`s15`] = { spawn = 's15', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`polestar1`] = { spawn = 'polestar1', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`skyline`] = { spawn = 'skyline', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`carrera19`] = { spawn = 'carrera19', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`taycanani`] = { spawn = 'taycanani', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`ikx3rebel22`] = { spawn = 'ikx3rebel22', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rmodpagani`] = { spawn = 'rmodpagani', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rmodr8alpil`] = { spawn = 'rmodr8alpil', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rmodx6`] = { spawn = 'rmodx6', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`GODz300UTEHC`] = { spawn = 'GODz300UTEHC', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`silviagd`] = { spawn = 'silviagd', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`sinacp`] = { spawn = 'sinacp', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`brzartisan`] = { spawn = 'brzartisan', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`model3`] = { spawn = 'model3', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`modelspd`] = { spawn = 'modelspd', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`models`] = { spawn = 'models', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`urusbeastedit`] = { spawn = 'urusbeastedit', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`v60hr`] = { spawn = 'v60hr', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`21hilux`] = { spawn = '21hilux', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`21hiluxdimond`] = { spawn = '21hiluxdimond', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`amarokdeboxe`] = { spawn = 'amarokdeboxe', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`amaroksimples`] = { spawn = 'amaroksimples', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`golg8boxeteto`] = { spawn = 'golg8boxeteto', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`porschereb`] = { spawn = 'porschereb', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`savaboxe`] = { spawn = 'savaboxe', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`tcrossar`] = { spawn = 'tcrossar', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`amarokreb`] = { spawn = 'amarokreb', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`amaroktdi`] = { spawn = 'amaroktdi', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`g7zin`] = { spawn = 'g7zin', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`golfabel`] = { spawn = 'golfabel', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`golfgti7`] = { spawn = 'golfgti7', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`golfgtirk`] = { spawn = 'golfgtirk', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`ramlh20`] = { spawn = 'ramlh20', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`s10deboxe`] = { spawn = 's10deboxe', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`savaboxeg7`] = { spawn = 'savaboxeg7', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`sw4abelvolks`] = { spawn = 'sw4abelvolks', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`armoredx6`] = { spawn = 'armoredx6', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`GODzBMWS1000RR`] = { spawn = 'GODzBMWS1000RR', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`golsupreme`] = { spawn = 'golsupreme', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`hilux2019`] = { spawn = 'hilux2019', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`saveirodeboxe`] = { spawn = 'saveirodeboxe', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`jeepcherokee`] = { spawn = 'jeepcherokee', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`ikx3abt20`] = { spawn = 'ikx3abt20', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`armoredgle`] = { spawn = 'armoredgle', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`biz25`] = { spawn = 'biz25', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`bmwx5nk`] = { spawn = 'bmwx5nk', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`golg4`] = { spawn = 'golg4', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`vwamarok`] = { spawn = 'vwamarok', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`307c`] = { spawn = '307c', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`audir8`] = { spawn = 'audir8', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`audirs6`] = { spawn = 'audirs6', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`aventador`] = { spawn = 'aventador', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`f25`] = { spawn = 'f25', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`bmwi8`] = { spawn = 'bmwi8', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`bmwm1wb`] = { spawn = 'bmwm1wb', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`bmwm4gts`] = { spawn = 'bmwm4gts', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`camaro`] = { spawn = 'camaro', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`celta`] = { spawn = 'celta', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`cg160`] = { spawn = 'cg160', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`chevette`] = { spawn = 'chevette', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`city`] = { spawn = 'city', price = 250000 }, -- Mais veículos podem sser adicionados aqui conforme necessário.
        [`corvettec7`] = { spawn = 'corvettec7', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`cruze`] = { spawn = 'cruze', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`deboxe_som`] = { spawn = 'deboxe_som', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`m8competition`] = { spawn = 'm8competition', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`mclarensenna`] = { spawn = 'mclarensenna', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`mercedesg65`] = { spawn = 'mercedesg65', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`opala`] = { spawn = 'opala', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`parati`] = { spawn = 'parati', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`r1`] = { spawn = 'r1', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.[`ikx3abt20`] = { spawn = 'ikx3abt20', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`rangerover`] = { spawn = 'rangerover', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`xj6`] = { spawn = 'xj6', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`xre300`] = { spawn = 'xre300', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`xt660`] = { spawn = 'xt660', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`zx10r`] = { spawn = 'zx10r', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`silvias15`] = { spawn = 'silvias15', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`2f2fgts`] = { spawn = '2f2fgts', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`2f2fmk4`] = { spawn = '2f2fmk4', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`2f2fmle7`] = { spawn = '2f2fmle7', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`ff4wrx`] = { spawn = 'ff4wrx', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`fnflan`] = { spawn = 'fnflan', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`fnfmits`] = { spawn = 'fnfmits', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`fnfmk4`] = { spawn = 'fnfmk4', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`fnfrx7`] = { spawn = 'fnfrx7', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`mansoryg63`] = { spawn = 'mansoryg63', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`saveirodbxJ`] = { spawn = 'saveirodbxJ', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`hornet`] = { spawn = 'hornet', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`specialtf`] = { spawn = 'specialtf', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`passat`] = { spawn = 'passat', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`silvias15`] = { spawn = 'silvias15', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`golf7`] = { spawn = 'golf7', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`golf1`] = { spawn = 'golf1', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`RYGBus`] = { spawn = 'RYGBus', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`montanaroyal`] = { spawn = 'montanaroyal', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
        [`675lt`] = { spawn = 'silvias15', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`baller4`] = { spawn = 'baller4', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`baller5`] = { spawn = 'baller5', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`baller6`] = { spawn = 'baller6', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`fuscaabel`] = { spawn = 'fuscaabel', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`r6`] = { spawn = 'r6', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`golg5`] = { spawn = 'golg5', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`agerasuper`] = { spawn = 'agerasuper', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`hexerz2`] = { spawn = 'hexerz2', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`saveiro`] = { spawn = 'saveiro', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`bxstorecybertruckv`] = { spawn = 'bxstorecybertruckv', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`bell412bxstore`] = { spawn = 'bell412bxstore', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`bm320ibxstore`] = { spawn = 'bm320ibxstore', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`bxstoreeurus`] = { spawn = 'bxstoreeurus', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`bxstorefsf90xx`] = { spawn = 'bxstorefsf90xx', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`bxstoretiggo8`] = { spawn = 'bxstoretiggo8', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`bxstorex6`] = { spawn = 'bxstorex6', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`bxstorex7`] = { spawn = 'bxstorex7', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`bxstorext660r`] = { spawn = 'bxstorext660r', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`corollabxstorexcoldgg`] = { spawn = 'corollabxstorexcoldgg', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`gle63bxstore`] = { spawn = 'gle63bxstore', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`l200bxstore`] = { spawn = 'l200bxstore', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`rs62bxstore`] = { spawn = 'rs62bxstore', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`traiblaze17bxstore`] = { spawn = 'traiblaze17bxstore', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`x7bxstore`] = { spawn = 'x7bxstore', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`cbtwister22k`] = { spawn = 'cbtwister22k', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`vironmichalski`] = { spawn = 'vironmichalski', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`l200bxstore`] = { spawn = 'l200bxstore', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`lrvelar`] = { spawn = 'lrvelar', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`trdrw`] = { spawn = 'trdrw', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`bmas350`] = { spawn = 'bmas350', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`savapikachu`] = { spawn = 'savapikachu', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`xt660cb2`] = { spawn = 'xt660cb2', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`z8r`] = { spawn = 'z8r', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`gp1`] = { spawn = 'gp1', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`city`] = { spawn = 'city', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`civictyper`] = { spawn = 'civictyper', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`corvettec7`] = { spawn = 'corvettec7', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`DBdemondurango`] = { spawn = 'DBdemondurango', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`opala`] = { spawn = 'opala', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`guardian`] = { spawn = 'guardian', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`shotaro`] = { spawn = 'shotaro', price = 50000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`pop110i`] = { spawn = 'pop110i', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`xre2019`] = { spawn = 'xre2019', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`cbtwister22k`] = { spawn = 'cbtwister22k', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`jeslbwk`] = { spawn = 'jeslbwk', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`6x6urus`] = { spawn = '6x6urus', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`gt63beast`] = { spawn = 'gt63beast', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`g63amg24m`] = { spawn = 'g63amg24m', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`kgjoker`] = { spawn = 'kgjoker', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`6x6urus`] = { spawn = '6x6urus', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`bmwmafiam3`] = { spawn = 'bmwmafiam3', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`rmodgt63`] = { spawn = 'rmodgt63', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`jes`] = { spawn = 'jes', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`992gt3rsbarbie`] = { spawn = '992gt3rsbarbie', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`golquadrado`] = { spawn = 'golquadrado', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`hb20`] = { spawn = 'hb20', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`palio`] = { spawn = 'palio', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`fiattoro`] = { spawn = 'fiattoro', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`sf90`] = { spawn = 'sf90', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`sf90`] = { spawn = 'sf90', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
        [`sf90`] = { spawn = 'sf90', price = 250000 }, -- Mais veículos podem ser adicionados aqui conforme necessário
    },
    
    
    blacklist_vehicles = { -- Veiculos na blacklist, proibidos para desmanchar  
        [`rhino`] = true
    },
   
     -- Configurações avançadas para desmanche por peças. Alterar com cuidado, requer entendimento de animações e propriedades.
    bones = {
        ["door_dside_f"] = {
            minDist = 1,

            animation = {
                delay = 3,
                dict = nil,
                anim = "WORLD_HUMAN_WELDING",
                forceCrouch = false
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "imp_prop_impexp_car_door_04a",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.1,
                pos2 = -0.15,
                pos3 = 0.0,
            },

            shelve = {
                name = "imp_prop_impexp_car_door_04a",
                offset = vec3(-1.3, 0.5, 1.8 ),
                rot = vec3(0.0, 0.0, 0.0)
            }
        },

        ["door_dside_r"] = {
            minDist = 1,

            animation = {
                delay = 3,
                dict = nil,
                anim = "WORLD_HUMAN_WELDING",
                forceCrouch = false
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "imp_prop_impexp_car_door_04a",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.1,
                pos2 = -0.15,
                pos3 = 0.0,
            },

            shelve = {
                name = "imp_prop_impexp_car_door_04a",
                offset = vec3(-1.0, 0.5, 1.8),
                rot = vec3(0.0, 0.0, 0.0)
            }
        },

        ["door_pside_f"] = {
            minDist = 1,

            animation = {
                delay = 3,
                dict = nil,
                anim = "WORLD_HUMAN_WELDING",
                forceCrouch = false
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "imp_prop_impexp_car_door_04a",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.1,
                pos2 = -0.15,
                pos3 = 0.0,
            },

            shelve = {
                name = "imp_prop_impexp_car_door_04a",
                offset = vec3(-0.7, 0.5, 1.8),
                rot = vec3(0.0, 0.0, 0.0)
            }
        },

        ["door_pside_r"] = {
            minDist = 1,

            animation = {
                delay = 3,
                dict = nil,
                anim = "WORLD_HUMAN_WELDING",
                forceCrouch = false
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "imp_prop_impexp_car_door_04a",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.1,
                pos2 = -0.15,
                pos3 = 0.0,
            },

            shelve = {
                name = "imp_prop_impexp_car_door_04a",
                offset = vec3(-0.4, 0.5, 1.8),
                rot = vec3(0.0, 0.0, 0.0)
            }
        },

        ["wheel_lf"] = {
            minDist = 1,

            animation = {
                delay = 3,
                dict = "amb@medic@standing@tendtodead@idle_a",
                anim = "idle_a",
                forceCrouch = true
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "prop_wheel_03",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.1,
                pos2 = -0.15,
                pos3 = 0.0,
            },

            shelve = {
                name = "prop_wheel_tyre",
                offset = vec3(1.2, 0.0, 0.97),
                rot = vec3(0.0, 0.0, 90.0)
            }
        },

        ["wheel_lr"] = {
            minDist = 1,

            animation = {
                delay = 3,
                dict = "amb@medic@standing@tendtodead@idle_a",
                anim = "idle_a",
                forceCrouch = true
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "prop_wheel_03",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.1,
                pos2 = -0.15,
                pos3 = 0.0,
            },

            shelve = {
                name = "prop_wheel_tyre",
                offset = vec3(0.93, 0.0, 0.97),
                rot = vec3(0.0, 0.0, 90.0)
            }
        },

        ["wheel_rf"] = {
            minDist = 1,

            animation = {
                delay = 3,
                dict = "amb@medic@standing@tendtodead@idle_a",
                anim = "idle_a",
                forceCrouch = true
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "prop_wheel_03",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.1,
                pos2 = -0.15,
                pos3 = 0.0,
            },

            shelve = {
                name = "prop_wheel_tyre",
                offset = vec3(0.67, 0.0, 0.97),
                rot =  vec3(0.0, 0.0, 90.0)
            }
        },

        ["wheel_rr"] = {
            minDist = 1,

            animation = {
                delay = 3,
                dict = "amb@medic@standing@tendtodead@idle_a",
                anim = "idle_a",
                forceCrouch = true
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "prop_wheel_03",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.1,
                pos2 = -0.15,
                pos3 = 0.0,
            },

            shelve = {
                name = "prop_wheel_tyre",
                offset = vec3(0.40, 0.0, 0.97),
                rot = vec3(0.0, 0.0, 90.0)
            }
        },

        ["wheel_lm1"] = {
            minDist = 1,

            animation = {
                delay = 3,
                dict = "amb@medic@standing@tendtodead@idle_a",
                anim = "idle_a",
                forceCrouch = true
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "prop_wheel_03",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.1,
                pos2 = -0.15,
                pos3 = 0.0,
            },

            shelve = {
                name = "prop_wheel_tyre",
                offset = vec3(0.12, 0.0, 0.97),
                rot = vec3(0.0, 0.0, 90.0)
            }
        },

        ["wheel_rm1"] = {
            minDist = 1,

            animation = {
                delay = 3,
                dict = "amb@medic@standing@tendtodead@idle_a",
                anim = "idle_a",
                forceCrouch = true
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "prop_wheel_03",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.1,
                pos2 = -0.15,
                pos3 = 0.0,
            },

            shelve = {
                name = "prop_wheel_tyre",
                offset = vec3(-0.15, 0.0, 0.97),
                rot = vec3(0.0, 0.0, 90.0)
            }
        },

        ["engine"] = {  
            minDist = 4,

            animation = {
                delay = 3,
                dict = nil,
                anim = "WORLD_HUMAN_WELDING",
                forceCrouch = false
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "prop_car_engine_01",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.5,
                pos2 = 0.4,
                pos3 = 0.0,
                
                motorcycle = { -- Se for uma Moto
                    dict = "anim@heists@box_carry@",
                    anim = "idle",
                    name = "prop_etricmotor_01",
                    flag = 49,
                    hand = 28422,
                    height = 0.0,
                    pos1 = 0.0,
                    pos2 = 0.0,
                    pos3 = 0.0,
                }
            },

            shelve = {
                name = "prop_car_engine_01",
                offset = vec3(1.0, 0.0, 0.17),
                rot = vec3(0.0, 0.0, 90.0),

                motorcycle = { -- Se for uma Moto
                    name = "prop_etricmotor_01",
                    offset = vec3(1.0, 0.0, 0.1),
                    rot = vec3(0.0, 0.0, 90.0)
                }
            }
        },
    }
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LOCATIONS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config.Locations = {
    {
        permission = 'perm.vilacanaa', -- Permissão para acessar
        percentual = 40, -- 10% do valor do veiculo
        
        coords = {
            blip = vec3(146.25,320.19,112.14),
            shelves = vec4(146.59,325.31,112.34,35.4)
        },
    },

   -- {
   --     permission = 'perm.ilegal', -- Permissão para acessar
   --     percentual = 25, -- 10% do valor do veiculo
   --     
   --     coords = {
   --         blip = vec3(2133.97,4779.93,40.96),
   --         shelves = vec4(2132.75,4775.23,40.96,187.09)           
   --     },
   -- },

    {
        permission = 'perm.grota', -- Permissão para acessar
        percentual = 40, -- 10% do valor do veiculo
        
        coords = {
            blip = vec3(1456.7,1107.95,114.44),
            shelves = vec4(1450.88,1109.16,114.39,229.61)
        },
    },

    {
        permission = 'perm.macaco', -- Permissão para acessar
        percentual = 40, -- 10% do valor do veiculo
        
        coords = {
            blip = vec3(588.07,2250.08,66.67),
            shelves = vec4(596.47,2253.37,66.67,209.77)
        },
    },

    {
        permission = 'desmanchecamorra.permissao', -- Permissão para acessar
        percentual = 40, -- 10% do valor do veiculo
        
        coords = {
            blip = vec3(-280.21, -2689.71, 6.15),
            shelves = vec4(-280.79,-2683.72,6.15,226.78)
        },
    },

    {
        permission = 'desmanchesublime.permissao', -- Permissão para acessar
        percentual = 40, -- 10% do valor do veiculo
        
        coords = {
            blip = vec3(-593.8, -1601.09, 27.01),
            shelves = vec4(-594.17,-1604.94,27.01,357.17)
        },
    },

    {
        permission = 'desmanchestreetrace.permissao', -- Permissão para acessar
        percentual = 40, -- 10% do valor do veiculo
        
        coords = {
            blip = vec3(888.2, -2101.46, 30.46),
            shelves = vec4(888.51,-2097.94,30.46,175.75)
        },
    },

    {
        permission = 'desmanchelscustoms.permissao', -- Permissão para acessar
        percentual = 40, -- 10% do valor do veiculo
        
        coords = {
            blip = vec3(-339.3, -95.15, 39.01),
            shelves = vec4(-332.79,-93.03,39.01,150.24)
        },
    },

    {
        permission = 'desmancheunderground.permissao', -- Permissão para acessar
        percentual = 40, -- 10% do valor do veiculo
        
        coords = {
            blip = vec3(2718.22, 3480.59, 55.25),
            shelves = vec4(2712.97,3479.87,55.25,297.64)
        },
    },
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LANGS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config.Langs = {
    ['dismantleFinished'] = function()
        TriggerEvent("Notify", "importante", "Desmanche finalizado, aguarde o último jogador entregar a peça na mesa para efetuarmos o pagamento. Caso ele não entregue em 60 segundo(s), vamos efetuar o pagamento.", 10000)
    end,
    
    ['canceledDismantle'] = function()
        TriggerEvent("Notify", "negado", "O Desmanche foi cancelado.", 5000)
    end,
    
    ['finishedDismantle'] = function()
        TriggerEvent("Notify", "importante", "Desmanche finalizado. O Pagamento foi feito para o autor do desmanche.", 5000)
    end,
    
    ['startedDismantle'] = function()
        TriggerEvent("Notify", "importante", "Desmanche Iniciado, Vocês têm " .. Config.dismantleTime .. " minuto(s) para desmanchar esse veículo, caso contrário o veículo será deletado.", 10000)
    end,

    ['cannotStartAnotherDismantle'] = function(source)
        TriggerClientEvent("Notify", source, "negado", "Você não pode iniciar outro desmanche, aguarde o seu finalizar.", 5000)
    end,
    
    ['noPermission'] = function(source)
        TriggerClientEvent("Notify", source, "negado", "Você não possui permissão.", 5000)
    end
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if SERVER then
    -- ADAPTAÇÕES
    vRP.getUserId = vRP.getUserId
    vRP.getUserSoruce = vRP.getUserSoruce 
    vRP.hasPermission = vRP.hasPermission

    vRP.prepare('mirtin_desmanche/getVehicle', 'SELECT * FROM vrp_user_veiculos WHERE user_id = @user_id AND veiculo = @vehicle')
    function vehiclesValidations(source, user_id, vehicle, plate, model)
        -- Validar veiculo
        local vehInfo = getVehicleInfo(model)
        if not vehInfo then
            TriggerClientEvent("Notify",source,"negado","Veiculo Não configurado.", 5000)
            return false
        end

        -- Validar se a placa existe em algum jogador
        local owner_id = vRP.getUserByRegistration(plate)
        if not owner_id then
            TriggerClientEvent("Notify",source,"negado","Veiculo de Americano.", 5000)
            return false
        end

        -- Validar se o veiculo não é proprio
        if owner_id == user_id then
            TriggerClientEvent("Notify",source,"negado","Você não pode desmanchar seu proprio veiculo.", 5000)
            return false
        end

        -- Validar se o veiculo existe na garagem do jogador
        local query = vRP.query('mirtin_desmanche/getVehicle', { user_id = owner_id, vehicle = vehicle })
        if #query == 0 then
            TriggerClientEvent("Notify",source,"negado","Veiculo não encontrado na garagem de nenhum jogador.", 5000)
            return false
        end

        -- Validar se o veiculo não foi desmanchado
        if query[1].status > 0 then
            TriggerClientEvent("Notify",source,"negado","Este veiculo ja se encontra detido/retido.", 5000)
            return false
        end

        -- Validar se o veiculo não está na blacklist
        if Config.blacklist_vehicles[model] then
            TriggerClientEvent("Notify",source,"negado","Veiculo está na blacklist.", 5000)
            return false
        end

        return true
    end

    vRP.prepare('mirtin_desmanche/updateVehicle', 'UPDATE vrp_user_veiculos SET status = @status WHERE veiculo = @vehicle AND user_id = @user_id')
    function setVehicleDismantle(vehicle, plate, model)
        local vehInfo = getVehicleInfo(model)
        if not vehInfo then
            return false
        end

        local owner_id = vRP.getUserByRegistration(plate)
        if not owner_id then
            return false
        end

        vRP.execute('mirtin_desmanche/updateVehicle', { status = 1, vehicle = vehInfo.model, user_id = owner_id })
    end

    function paymentDismantle(user_id, vehicle, percentual, model)
        local source = vRP.getUserSource(user_id)

        local vehInfo = getVehicleInfo(model)
        if not vehInfo then
            TriggerClientEvent("Notify",source,"negado","Veiculo Não configurado.", 5000)
            return false
        end

        local vehPrice = vehInfo.price
        if parseInt(vehPrice) > 2500000 then 
            vehPrice = 2500000 
        end

        local payment = parseInt(vehPrice * (percentual/100))
        vRP.giveInventoryItem(user_id, Config.dirty_money, payment, true)

        if source then
            TriggerClientEvent("Notify",source,"sucesso","Você recebeu "..payment.." por desmanchar esse veiculo.", 5000)
        end
    end

    function getVehiclePrice(model)
        local vehInfo = getVehicleInfo(model)

        if not vehInfo then
            return false
        end
        
        return vehInfo.price or 0
    end

    function getVehicleInfo(model)
        if Config.custom_vehicles then
            if Config.vehicles[model] then
                return Config.vehicles[model]
            end

            return false
        end

        local vehInfo = exports.mirtin_garages:getVehInfos(tonumber(model))
        if vehInfo then
            return vehInfo -- { price, spawn }
        end

        return false
    end
end 