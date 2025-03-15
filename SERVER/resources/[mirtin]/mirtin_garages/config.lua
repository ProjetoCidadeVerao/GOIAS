Garages = {}

Garages.Main = {
    dir = "DIR", -- DIRETORIO DAS IMAGENS DOS CARROS

    ipvaVencimento = 7, -- DIAS PARA O VENCIMENTO DO IPVA
	ipvaValue = 0.05, -- 5% VALOR  DO VEICULO IPVA

    detidoValue = 0.1, -- 5% VALOR DO VEICULO DETIDO
	retidoValue = 0.1, -- 10% VALOR DO VEICULO RETIDO 
    
    previewCar = {
        camCoords = vec3(404.60, -945.44, -98.50),
        camPosition = vec3(404.90, -950.58, -100.00),
        carPosition = vec4(404.99, -949.60, -99.98, 10)
    },
}
    --- WORK - CARROS - M0TOS - VIP
Garages.VehList = {
    -- RENATO
    [GetHashKey("720s18")] = { model = "720s18", name = "720s18", price = 0, trunk = 150, type = "vip" },

-- VIPS
-- [GetHashKey("20xb7")] = { model = "20xb7", name = "20xb7", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("21rsq8")] = { model = "21rsq8", name = "21rsq8", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("74civrswb")] = { model = "74civrswb", name = "74civrswb", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("q8hycade")] = { model = "q8hycade", name = "q8hycade", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("q8prior")] = { model = "q8prior", name = "q8prior", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("rs4rk")] = { model = "rs4rk", name = "rs4rk", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("rs5mans")] = { model = "rs5mans", name = "rs5mans", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("ckm3e36")] = { model = "ckm3e36", name = "ckm3e36", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("m3e92")] = { model = "m3e92", name = "m3e92", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("ddc69maro")] = { model = "ddc69maro", name = "ddc69maro", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("chironsuper")] = { model = "chironsuper", name = "chironsuper", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("ckbmwm4offwhite")] = { model = "ckbmwm4offwhite", name = "ckbmwm4offwhite", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("rmodcharger")] = { model = "rmodcharger", name = "rmodcharger", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("chargerf8")] = { model = "chargerf8", name = "chargerf8", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("hellcatf9")] = { model = "hellcatf9", name = "hellcatf9", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("trx")] = { model = "trx", name = "trx", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("488animated")] = { model = "488animated", name = "488animated", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("f355")] = { model = "f355", name = "f355", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("fxxevo")] = { model = "fxxevo", name = "fxxevo", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("fnfdaytona")] = { model = "fnfdaytona", name = "fnfdaytona", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("mustang65")] = { model = "mustang65", name = "mustang65", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("eleanor")] = { model = "eleanor", name = "eleanor", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("rmodfordgt")] = { model = "rmodfordgt", name = "rmodfordgt", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("manssupersnake")] = { model = "manssupersnake", name = "manssupersnake", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("rapger19")] = { model = "rapger19", name = "rapger19", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("fpaceprior")] = { model = "fpaceprior", name = "fpaceprior", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("g63c")] = { model = "g63c", name = "g63c", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("gcma4sedan2021")] = { model = "gcma4sedan2021", name = "gcma4sedan2021", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("21sierra")] = { model = "21sierra", name = "21sierra", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("GODzRB26SUBI")] = { model = "GODzRB26SUBI", name = "GODzRB26SUBI", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("gt63mt")] = { model = "gt63mt", name = "gt63mt", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("gta5rp_veh_gtr33")] = { model = "gta5rp_veh_gtr33", name = "gta5rp_veh_gtr33", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("GC_01INTEG")] = { model = "GC_01INTEG", name = "GC_01INTEG", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("nsx17")] = { model = "nsx17", name = "nsx17", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("huracanpriorbeast")] = { model = "huracanpriorbeast", name = "huracanpriorbeast", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("hyundaiveloster")] = { model = "hyundaiveloster", name = "hyundaiveloster", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("ikx3abt20")] = { model = "ikx3abt20", name = "ikx3abt20", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("ikx3mc2021")] = { model = "ikx3mc2021", name = "ikx3mc2021", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("demonhawkk")] = { model = "demonhawkk", name = "demonhawkk", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("2022jeep")] = { model = "2022jeep", name = "2022jeep", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("rmodjeepg")] = { model = "rmodjeepg", name = "rmodjeepg", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("18performante")] = { model = "18performante", name = "18performante", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("sex6")] = { model = "sex6", name = "sex6", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("zentenario")] = { model = "zentenario", name = "zentenario", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("lc500")] = { model = "lc500", name = "lc500", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("madf350lift")] = { model = "madf350lift", name = "madf350lift", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("675lt")] = { model = "675lt", name = "675lt", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("mansgt")] = { model = "mansgt", name = "mansgt", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("a45")] = { model = "a45", name = "a45", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("waldw222")] = { model = "waldw222", name = "waldw222", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("evo9")] = { model = "evo9", name = "evo9", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("350z")] = { model = "350z", name = "350z", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("s15")] = { model = "s15", name = "s15", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("skyline")] = { model = "skyline", name = "skyline", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("polestar1")] = { model = "polestar1", name = "polestar1", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("carrera19")] = { model = "carrera19", name = "carrera19", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("taycanani")] = { model = "taycanani", name = "taycanani", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("ikx3rebel22")] = { model = "ikx3rebel22", name = "ikx3rebel22", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("rmodpagani")] = { model = "rmodpagani", name = "rmodpagani", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("rmodr8alpil")] = { model = "rmodr8alpil", name = "rmodr8alpil", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("rmodx6")] = { model = "rmodx6", name = "rmodx6", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("GODz300UTEHC")] = { model = "GODz300UTEHC", name = "GODz300UTEHC", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("silviagd")] = { model = "silviagd", name = "silviagd", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("sinacp")] = { model = "sinacp", name = "sinacp", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("brzartisan")] = { model = "brzartisan", name = "brzartisan", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("model3")] = { model = "model3", name = "model3", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("models")] = { model = "models", name = "models", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("modelspd")] = { model = "modelspd", name = "modelspd", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("urusbeastedit")] = { model = "urusbeastedit", name = "urusbeastedit", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("v60hr")] = { model = "v60hr", name = "v60hr", price = 0, trunk = 150, type = "vip" },
[GetHashKey("titan160")] = { model = "titan160", name = "titan160", price = 980000, trunk = 150, type = "motos" },

    -- CARROS DA HUNTER
    [GetHashKey("carretinhacarros")] = { model = "carretinhacarros", name = "carretinhacarros", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("supersupervolito")] = { model = "supersupervolito", name = "supersupervolito", price = 0, trunk = 150, type = "service" },
    [GetHashKey("carretinhamotos")] = { model = "carretinhamotos", name = "carretinhamotos", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("carretinhaparedao1")] = { model = "carretinhaparedao1", name = "carretinhaparedao1", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("carretinhaparedao2")] = { model = "carretinhaparedao2", name = "carretinhaparedao2", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("bora")] = { model = "bora", name = "bora", price = 1150000, trunk = 150, type = "carros" },
    [GetHashKey("F250Deboxe")] = { model = "F250Deboxe", name = "F250Deboxe", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("fox")] = { model = "fox", name = "fox", price = 1150000, trunk = 150, type = "carros" },
    [GetHashKey("kadett")] = { model = "kadett", name = "kadett", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("paredao")] = { model = "paredao", name = "paredao", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("paredao2")] = { model = "paredao2", name = "paredao2", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("vwsava")] = { model = "vwsava", name = "vwsava", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("18velar")] = { model = "18velar", name = "18velar", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("211le")] = { model = "211le", name = "211le", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("350z")] = { model = "350z", name = "350z", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("2013r8")] = { model = "2013r8", name = "2013r8", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("a45amg")] = { model = "a45amg", name = "a45amg", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("agera")] = { model = "agera", name = "agera", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("amarok")] = { model = "amarok", name = "amarok", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("amarok19")] = { model = "amarok19", name = "amarok19", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("m3e36")] = { model = "m3e36", name = "m3e36", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("bnr34")] = { model = "bnr34", name = "bnr34", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("boxster")] = { model = "boxster", name = "boxster", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("brz13")] = { model = "brz13", name = "brz13", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("bugatti")] = { model = "bugatti", name = "bugatti", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("c7r")] = { model = "c7r", name = "c7r", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("c63coupe")] = { model = "c63coupe", name = "c63coupe", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("camaross")] = { model = "camaross", name = "camaross", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("camarozl1")] = { model = "camarozl1", name = "Camaro ZL1", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("zl12017")] = { model = "zl12017", name = "Camaro ZL1 2017", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("prf1200")] = { model = "prf1200", name = "prf1200", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("charger")] = { model = "charger", name = "charger", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("f8")] = { model = "f8", name = "f8", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("chevette")] = { model = "chevette", name = "chevette", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("corolla21")] = { model = "corolla21", name = "corolla21", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("demonboi")] = { model = "demonboi", name = "demonboi", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("escort")] = { model = "escort", name = "escort", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("evoque")] = { model = "evoque", name = "evoque", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("f430")] = { model = "f430", name = "f430", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("ramlh20")] = { model = "ramlh20", name = "DOODGE RAM", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("fd599")] = { model = "fd599", name = "fd599", price = 630000, trunk = 1285706, type = "vip" },
    [GetHashKey("ferraripistas")] = { model = "ferraripistas", name = "ferraripistas", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("forgt50020")] = { model = "forgt50020", name = "forgt50020", price = 630000, trunk = 1285706, type = "vip" },
    [GetHashKey("fusca")] = { model = "fusca", name = "fusca", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("premier")] = { model = "premier", name = "Sandero", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("gclas9")] = { model = "gclas9", name = "gclas9", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("gol1944")] = { model = "gol1944", name = "gol1944", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("golf75r")] = { model = "golf75r", name = "golf75r", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("golg3q")] = { model = "golg3q", name = "golg3q", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("hellcatlb")] = { model = "hellcatlb", name = "hellcatlb", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("jesko")] = { model = "jesko", name = "jesko", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("jetta2012")] = { model = "jetta2012", name = "jetta2012", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("jettagli21")] = { model = "jettagli21", name = "jettagli21", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("lamtmc")] = { model = "lamtmc", name = "lamtmc", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("lgss")] = { model = "lgss", name = "lgss", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("lp610")] = { model = "lp610", name = "lp610", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("m2f22")] = { model = "m2f22", name = "m2f22", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("m5e60")] = { model = "m5e60", name = "m5e60", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("mbbs20")] = { model = "mbbs20", name = "mbbs20", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("mclarenp1")] = { model = "mclarenp1", name = "mclarenp1", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("omega")] = { model = "omega", name = "omega", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("picador")] = { model = "picador", name = "picador", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("por4s")] = { model = "por4s", name = "por4s", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("911turboS")] = { model = "911turboS", name = "911turboS", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("porscheboxster")] = { model = "porscheboxster", name = "porscheboxster", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("22psh")] = { model = "22psh", name = "22psh", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("pts21")] = { model = "pts21", name = "pts21", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("q820")] = { model = "q820", name = "q820", price = 630000, trunk = 150, type = "vip" },
   

    [GetHashKey("PCX")] = { model = "PCX", name = "PCX", price = 880000, trunk = 150, type = "motos" },
    [GetHashKey("wrx19")] = { model = "wrx19", name = "Subaru WRX STI", price = 880000, trunk = 150, type = "motos" },
    [GetHashKey("rmodfordgt")] = { model = "rmodfordgt", name = "rmodfordgt", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("rmodmustang")] = { model = "rmodmustang", name = "rmodmustang", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("rmodsian")] = { model = "rmodsian", name = "rmodsian", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("rmodskyline34")] = { model = "rmodskyline34", name = "rmodskyline34", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("rs72021")] = { model = "rs72021", name = "rs72021", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("saveirodoleo")] = { model = "saveirodoleo", name = "saveirodoleo", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("saveirosurf")] = { model = "saveirosurf", name = "saveirosurf", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("skyline")] = { model = "skyline", name = "skyline", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("subaro2")] = { model = "subaro2", name = "subaro2", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("trail21")] = { model = "trail21", name = "trail21", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("ttrs")] = { model = "ttrs", name = "ttrs", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("ursa")] = { model = "ursa", name = "ursa", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("urus")] = { model = "urus", name = "urus", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("vetok")] = { model = "vetok", name = "vetok", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("x6m")] = { model = "x6m", name = "x6m", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("20r1")] = { model = "20r1", name = "20r1", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("150ifood")] = { model = "150ifood", name = "150ifood", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("bati")] = { model = "bati", name = "bati", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("bikelete")] = { model = "bikelete", name = "bikelete", price = 630000, trunk = 150, type = "motos" },
    [GetHashKey("biz125")] = { model = "biz125", name = "biz125", price = 880000, trunk = 150, type = "motos" },
    [GetHashKey("cb650")] = { model = "cb650", name = "cb650", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("cb1000r2013")] = { model = "cb1000r2013", name = "cb1000r2013", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("cb2020")] = { model = "cb2020", name = "cb2020", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("cbbcar")] = { model = "cbbcar", name = "cbbcar", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("cbb")] = { model = "cbb", name = "cbb", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("cbr12")] = { model = "cbr12", name = "cbr12", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("cbr600rr")] = { model = "cbr600rr", name = "cbr600rr", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("cbr650r")] = { model = "cbr650r", name = "cbr650r", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("cbr1000rr")] = { model = "cbr1000rr", name = "cbr1000rr", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("cg160")] = { model = "cg160", name = "cg160", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("DirtBike")] = { model = "DirtBike", name = "DirtBike", price = 630000, trunk = 150, type = "motos" },
    [GetHashKey("dm1200")] = { model = "dm1200", name = "dm1200", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("f800r")] = { model = "f800r", name = "f800r", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("hornet2010")] = { model = "hornet2010", name = "hornet2010", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("hornet2014")] = { model = "hornet2014", name = "hornet2014", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("m1000rr")] = { model = "m1000rr", name = "m1000rr", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("panigale")] = { model = "panigale", name = "panigale", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("pop110")] = { model = "pop110", name = "pop110", price = 880000, trunk = 150, type = "motos" },
    [GetHashKey("r1200gs")] = { model = "r1200gs", name = "r1200gs", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("r1250")] = { model = "r1250", name = "r1250", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("r1250adventure")] = { model = "r1250adventure", name = "r1250adventure", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("s1000rrdrag")] = { model = "s1000rrdrag", name = "s1000rrdrag", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("tiger800")] = { model = "tiger800", name = "tiger800", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("XJ")] = { model = "XJ", name = "XJ", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("xj6turborenato")] = { model = "xj6turborenato", name = "xj6turborenato", price = 1285706, trunk = 150, type = "vip" },
    [GetHashKey("xj2018")] = { model = "xj2018", name = "xj2018", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("xre300")] = { model = "xre300", name = "xre300", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("xt66")] = { model = "xt66", name = "xt66", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("xt660")] = { model = "xt660", name = "xt660", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("z1000")] = { model = "z1000", name = "z1000", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("zx10r")] = { model = "zx10r", name = "zx10r", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("explorer")] = { model = "explorer", name = "explorer", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("amels200")] = { model = "amels200", name = "amels200", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("bauguerra")] = { model = "bauguerra", name = "bauguerra", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("cegonha26")] = { model = "cegonha26", name = "cegonha26", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("phantom")] = { model = "phantom", name = "phantom", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("scaniar440")] = { model = "scaniar440", name = "scaniar440", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("scanias530")] = { model = "scanias530", name = "scanias530", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("trioeletrico2k21")] = { model = "trioeletrico2k21", name = "trioeletrico2k21", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("volvofh460")] = { model = "volvofh460", name = "volvofh460", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("carretinhacarros")] = { model = "carretinhacarros", name = "carretinhacarros", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("carretinhamotos")] = { model = "carretinhamotos", name = "carretinhamotos", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("carretinhaparedao1")] = { model = "carretinhaparedao1", name = "carretinhaparedao1", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("carretinhaparedao2")] = { model = "carretinhaparedao2", name = "carretinhaparedao2", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("fnfrx7")] = { model = "fnfrx7", name = "fnfrx7", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("fnfmk4")] = { model = "fnfmk4", name = "fnfmk4", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("fnfmits")] = { model = "fnfmits", name = "fnfmits", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("fnflan")] = { model = "fnflan", name = "fnflan", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("fnf4r34")] = { model = "fnf4r34", name = "fnf4r34", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("ff4wrx")] = { model = "ff4wrx", name = "ff4wrx", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("2f2fmle7")] = { model = "2f2fmle7", name = "2f2fmle7", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("2f2fmk4")] = { model = "2f2fmk4", name = "2f2fmk4", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("2f2fgts")] = { model = "2f2fgts", name = "2f2fgts", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("2f2fgtr34")] = { model = "2f2fgtr34", name = "2f2fgtr34", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("checol17")] = { model = "checol17", name = "checol17", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("ikx3vtec94")] = { model = "ikx3vtec94", name = "ikx3vtec94", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("mclaren_senna_gtr_2019")] = { model = "mclaren_senna_gtr_2019", name = "mclaren_senna_gtr_2019", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("nissanr33tbk")] = { model = "nissanr33tbk", name = "nissanr33tbk", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("pgt322")] = { model = "pgt322", name = "pgt322", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("priortaycan")] = { model = "priortaycan", name = "priortaycan", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("r32")] = { model = "r32", name = "r32", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("sclkuz1")] = { model = "sclkuz1", name = "sclkuz1", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("sclkuz")] = { model = "sclkuz", name = "sclkuz", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("topfoil")] = { model = "topfoil", name = "topfoil", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("lamborghinihuracan")] = { model = "lamborghinihuracan", name = "lamborghinihuracan", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("w13")] = { model = "w13", name = "w13", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("350z")] = { model = "350z", name = "350z", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("2015crf450")] = { model = "2015crf450", name = "2015crf450", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("rs6rabt20")] = { model = "rs6rabt20", name = "rs6rabt20", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("belicorzr2022")] = { model = "belicorzr2022", name = "belicorzr2022", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("fusion18")] = { model = "fusion18", name = "fusion18", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("golg2")] = { model = "golg2", name = "golg2", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("ikx3mini21")] = { model = "ikx3mini21", name = "ikx3mini21", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("project8")] = { model = "project8", name = "project8", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("lfa")] = { model = "lfa", name = "lfa", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("saveiroquadrada")] = { model = "saveiroquadrada", name = "saveiroquadrada", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("gxa90")] = { model = "gxa90", name = "gxa90", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("uptsi")] = { model = "uptsi", name = "uptsi", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("shinobu")] = { model = "shinobu", name = "shinobu", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("PV_BOOSTER_1")] = { model = "PV_BOOSTER_1", name = "PV_BOOSTER_1", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("thewolftruck")] = { model = "thewolftruck", name = "thewolftruck", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("r8lms")] = { model = "r8lms", name = "r8lms", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("skyliner34blue")] = { model = "skyliner34blue", name = "skyliner34blue", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("skyliner34dragongold")] = { model = "skyliner34dragongold", name = "skyliner34dragongold", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("Killer350z")] = { model = "Killer350z", name = "Killer350z", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("m2")] = { model = "m2", name = "m2", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("vwgolf")] = { model = "vwgolf", name = "vwgolf", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("tropic2")] = { model = "tropic2", name = "tropic2", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("tritonhpe")] = { model = "tritonhpe", name = "tritonhpe", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("toyotasupra")] = { model = "toyotasupra", name = "toyotasupra", price = 630000, trunk = 150, type = "vip" },   
    [GetHashKey("teslaprior")] = { model = "teslaprior", name = "teslaprior", price = 630000, trunk = 150, type = "vip" },  
    [GetHashKey("rumpo")] = { model = "rumpo", name = "rumpo", price = 630000, trunk = 150, type = "vip" },  
    [GetHashKey("paganihuayra")] = { model = "paganihuayra", name = "paganihuayra", price = 630000, trunk = 150, type = "vip" }, 
    [GetHashKey("nissanskyliner34")] = { model = "nissanskyliner34", name = "nissanskyliner34", price = 630000, trunk = 150, type = "vip" },  
    [GetHashKey("nissangtrnismo")] = { model = "nissangtrnismo", name = "nissangtrnismo", price = 630000, trunk = 150, type = "vip" },   
    [GetHashKey("nissangtr")] = { model = "nissangtr", name = "nissangtr", price = 630000, trunk = 150, type = "vip" },   
    [GetHashKey("nissan370z")] = { model = "nissan370z", name = "nissan370z", price = 630000, trunk = 150, type = "vip" },  
    [GetHashKey("mercedesamgc63")] = { model = "mercedesamgc63", name = "mercedesamgc63", price = 630000, trunk = 150, type = "vip" },   
    [GetHashKey("mercedesgt63")] = { model = "mercedesgt63", name = "mercedesgt63", price = 630000, trunk = 150, type = "vip" },   
    [GetHashKey("mazdarx7")] = { model = "mazdarx7", name = "mazdarx7", price = 630000, trunk = 150, type = "vip" }, 
    [GetHashKey("lancerevolutionx")] = { model = "lancerevolutionx", name = "lancerevolutionx", price = 630000, trunk = 150, type = "vip" }, 
    [GetHashKey("bmwm4gts")] = { model = "bmwm4gts", name = "bmwm4gts", price = 630000, trunk = 150, type = "vip" }, 
    [GetHashKey("bmwm3f80")] = { model = "bmwm3f80", name = "bmwm3f80", price = 630000, trunk = 150, type = "vip" },
    [GetHashKey("bxstorex7")] = { model = "bxstorex7", name = "bxstorex7", price = 630000, trunk = 150, type = "vip" },  --   

    -- VANS ILEGAL
    [GetHashKey("van_bahamas")] = { model = "van_bahamas", name = "van_bahamas", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("van_ballas")] = { model = "van_ballas", name = "van_ballas", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("van_bloods")] = { model = "van_bloods", name = "van_bloods", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("van_bratwa")] = { model = "van_bratwa", name = "van_bratwa", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("van_camorra")] = { model = "van_camorra", name = "van_camorra", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("van_cartel")] = { model = "van_cartel", name = "van_cartel", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("van_crips")] = { model = "van_crips", name = "van_crips", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("van_franca")] = { model = "van_franca", name = "van_franca", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("van_galaxy")] = { model = "van_galaxy", name = "van_galaxy", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("van_grota")] = { model = "van_grota", name = "van_grota", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("van_lostmc")] = { model = "van_lostmc", name = "van_lostmc", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("van_mafia")] = { model = "van_mafia", name = "van_mafia", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("van_medelin")] = { model = "van_medelin", name = "van_medelin", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("van_peakyblinders")] = { model = "van_peakyblinders", name = "van_peakyblinders", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("van_syndicate")] = { model = "van_syndicate", name = "van_syndicate", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("van_triaden")] = { model = "van_triaden", name = "van_triaden", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("van_turquia")] = { model = "van_turquia", name = "van_turquia", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("van_vagos")] = { model = "van_vagos", name = "van_vagos", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("van_vanilla")] = { model = "van_vanilla", name = "van_vanilla", price = 0, trunk = 150, type = "vip" },
    [GetHashKey("van_yakuza")] = { model = "van_yakuza", name = "van_yakuza", price = 0, trunk = 150, type = "vip" }, 
    [GetHashKey("bxstorecybertruckv")] = { model = "bxstorecybertruckv", name = "Cybertruck", price = 0, trunk = 150, type = "vip" },-- bxstorecybertruckv

-- PLUS 

-- [GetHashKey("18Velar")] = { model = "18Velar", name = "18Velar", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("19gv80")] = { model = "19gv80", name = "19gv80", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("Hycaders6")] = { model = "Hycaders6", name = "Hycaders6", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("r8beastedit")] = { model = "r8beastedit", name = "r8beastedit", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("ben17")] = { model = "ben17", name = "ben17", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("i7x")] = { model = "i7x", name = "i7x", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("e92bb")] = { model = "e92bb", name = "e92bb", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("g81hr")] = { model = "g81hr", name = "g81hr", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("m4lb2")] = { model = "m4lb2", name = "m4lb2", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("c8p1")] = { model = "c8p1", name = "c8p1", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("playajoker6.4")] = { model = "playajoker6.4", name = "playajoker6.4", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("escaladeprime")] = { model = "escaladeprime", name = "escaladeprime", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("impronta4")] = { model = "impronta4", name = "impronta4", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("mach1")] = { model = "mach1", name = "mach1", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("gtrh")] = { model = "gtrh", name = "gtrh", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("animfk8hr")] = { model = "animfk8hr", name = "animfk8hr", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("204sWrangler")] = { model = "204sWrangler", name = "204sWrangler", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("kiasor21")] = { model = "kiasor21", name = "kiasor21", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("vanztt")] = { model = "vanztt", name = "vanztt", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("gstec1")] = { model = "gstec1", name = "gstec1", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("manhartx7")] = { model = "manhartx7", name = "manhartx7", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("Zinxy")] = { model = "Zinxy", name = "Zinxy", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("600ltwb")] = { model = "600ltwb", name = "600ltwb", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("neonp1")] = { model = "neonp1", name = "neonp1", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("rmodgt63")] = { model = "rmodgt63", name = "rmodgt63", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("r36evrim")] = { model = "r36evrim", name = "r36evrim", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("lbwk35")] = { model = "lbwk35", name = "lbwk35", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("rmodskyline34")] = { model = "rmodskyline34", name = "rmodskyline34", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("23evo911")] = { model = "23evo911", name = "23evo911", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("gt2rs")] = { model = "gt2rs", name = "gt2rs", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("manspana")] = { model = "manspana", name = "manspana", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("autobio")] = { model = "autobio", name = "autobio", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("rmodm4")] = { model = "rmodm4", name = "rmodm4", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("rmodm4Unikat")] = { model = "rmodm4Unikat", name = "rmodm4Unikat", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("Rolls6x6")] = { model = "Rolls6x6", name = "Rolls6x6", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("variskbrz")] = { model = "variskbrz", name = "variskbrz", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("teslapd")] = { model = "teslapd", name = "teslapd", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("gst862")] = { model = "gst862", name = "gst862", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("gfuckedsupra")] = { model = "gfuckedsupra", name = "gfuckedsupra", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("suprapandem")] = { model = "suprapandem", name = "suprapandem", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("2019tundrac")] = { model = "2019tundrac", name = "2019tundrac", price = 0, trunk = 150, type = "vip" },
-- 
-- -- Motos
-- 
-- [GetHashKey("aerox155")] = { model = "aerox155", name = "aerox155", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("bati901")] = { model = "bati901", name = "bati901", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("cb650r")] = { model = "cb650r", name = "cb650r", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("claw")] = { model = "claw", name = "claw", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("GODzBMWS1000RR")] = { model = "GODzBMWS1000RR", name = "GODzBMWS1000RR", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("GODzNINJAH2")] = { model = "GODzNINJAH2", name = "GODzNINJAH2", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("GODzYAMR1")] = { model = "GODzYAMR1", name = "GODzYAMR1", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("harleyfx")] = { model = "harleyfx", name = "harleyfx", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("hexerz2")] = { model = "hexerz2", name = "hexerz2", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("kawagala")] = { model = "kawagala", name = "kawagala", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("km1000rr")] = { model = "km1000rr", name = "km1000rr", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("mv2019")] = { model = "mv2019", name = "mv2019", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("r1200")] = { model = "r1200", name = "r1200", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("wheelchair")] = { model = "wheelchair", name = "wheelchair", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("yzfr7")] = { model = "yzfr7", name = "yzfr7", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("z8r")] = { model = "z8r", name = "z8r", price = 0, trunk = 150, type = "vip" },
-- 
-- -- Jatos
-- 
-- [GetHashKey("crj550")] = { model = "crj550", name = "crj550", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("Jetstarii")] = { model = "Jetstarii", name = "Jetstarii", price = 0, trunk = 150, type = "vip" },
-- 
-- -- Hype
-- 
-- [GetHashKey("17mansorypnmr")] = { model = "17mansorypnmr", name = "17mansorypnmr", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("911turbos")] = { model = "911turbos", name = "911turbos", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("2019chiron")] = { model = "2019chiron", name = "2019chiron", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("rs7beast")] = { model = "rs7beast", name = "rs7beast", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("rs666")] = { model = "rs666", name = "rs666", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("bentaygam")] = { model = "bentaygam", name = "bentaygam", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("m4c")] = { model = "m4c", name = "m4c", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("22m5")] = { model = "22m5", name = "22m5", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("manhartx7")] = { model = "manhartx7", name = "manhartx7", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("kln")] = { model = "kln", name = "kln", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("chironsupersport22")] = { model = "chironsupersport22", name = "chironsupersport22", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("rrcorquettecustom")] = { model = "rrcorquettecustom", name = "rrcorquettecustom", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("abfsrt")] = { model = "abfsrt", name = "abfsrt", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("21CDemonSC")] = { model = "21CDemonSC", name = "21CDemonSC", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("GODzDRIFTCAT")] = { model = "GODzDRIFTCAT", name = "GODzDRIFTCAT", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("dvc63darwin")] = { model = "dvc63darwin", name = "dvc63darwin", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("gsts6504")] = { model = "gsts6504", name = "gsts6504", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("rapger19")] = { model = "rapger19", name = "rapger19", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("rr21shelbystreet")] = { model = "rr21shelbystreet", name = "rr21shelbystreet", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("gemera")] = { model = "gemera", name = "gemera", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("gt3demon")] = { model = "gt3demon", name = "gt3demon", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("rmodjeepg")] = { model = "rmodjeepg", name = "rmodjeepg", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("KillerHwak")] = { model = "KillerHwak", name = "KillerHwak", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("lbperfs")] = { model = "lbperfs", name = "lbperfs", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("AmgGtrLight")] = { model = "AmgGtrLight", name = "AmgGtrLight", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("evox")] = { model = "evox", name = "evox", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("mstngwide24")] = { model = "mstngwide24", name = "mstngwide24", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("polyr36nd")] = { model = "polyr36nd", name = "polyr36nd", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("coldani")] = { model = "coldani", name = "coldani", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("cayen19")] = { model = "cayen19", name = "cayen19", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("rocket")] = { model = "rocket", name = "rocket", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("rs7wide")] = { model = "rs7wide", name = "rs7wide", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("rx7veilside")] = { model = "rx7veilside", name = "rx7veilside", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("sema10X10")] = { model = "sema10X10", name = "sema10X10", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("teslaroad")] = { model = "teslaroad", name = "teslaroad", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("variszupra")] = { model = "variszupra", name = "variszupra", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("a80")] = { model = "a80", name = "a80", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("zlmk5")] = { model = "zlmk5", name = "zlmk5", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("xc90")] = { model = "xc90", name = "xc90", price = 0, trunk = 300, type = "vip" },
-- 
-- -- Hycade
-- 
-- [GetHashKey("alpinab7BLACKEDITION")] = { model = "alpinab7BLACKEDITION", name = "alpinab7BLACKEDITION", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("r8novitec")] = { model = "r8novitec", name = "r8novitec", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("23sharkm2")] = { model = "23sharkm2", name = "23sharkm2", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("centuria")] = { model = "centuria", name = "centuria", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("c8")] = { model = "c8", name = "c8", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("rmodzl1")] = { model = "rmodzl1", name = "rmodzl1", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("GODzDRIFTCAT")] = { model = "GODzDRIFTCAT", name = "GODzDRIFTCAT", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("vanzhycade")] = { model = "vanzhycade", name = "vanzhycade", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("dviperpxxh")] = { model = "dviperpxxh", name = "dviperpxxh", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("488animated2")] = { model = "488animated2", name = "488animated2", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("giulia_2021")] = { model = "giulia_2021", name = "giulia_2021", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("civic2020")] = { model = "civic2020", name = "civic2020", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("hycfocusrs")] = { model = "hycfocusrs", name = "hycfocusrs", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("hycadeurus")] = { model = "hycadeurus", name = "hycadeurus", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("lbperfs")] = { model = "lbperfs", name = "lbperfs", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("hycadeevo")] = { model = "hycadeevo", name = "hycadeevo", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("topcargt63")] = { model = "topcargt63", name = "topcargt63", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("GODz95GSX")] = { model = "GODz95GSX", name = "GODz95GSX", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("avantr34")] = { model = "avantr34", name = "avantr34", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("gt3hycade")] = { model = "gt3hycade", name = "gt3hycade", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("dc_evo900mansory")] = { model = "dc_evo900mansory", name = "dc_evo900mansory", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("rs7c821")] = { model = "rs7c821", name = "rs7c821", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("mk4hycade")] = { model = "mk4hycade", name = "mk4hycade", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("venuumsupra")] = { model = "venuumsupra", name = "venuumsupra", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("TTSTO")] = { model = "TTSTO", name = "TTSTO", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("wmfenyr")] = { model = "wmfenyr", name = "wmfenyr", price = 0, trunk = 300, type = "vip" },
-- 
-- -- Helicoptero
-- 
-- [GetHashKey("bmas350")] = { model = "bmas350", name = "bmas350", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("BCs_B412")] = { model = "BCs_B412", name = "BCs_B412", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("civmaverick")] = { model = "civmaverick", name = "civmaverick", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("trdrw")] = { model = "trdrw", name = "trdrw", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("Super_Samson")] = { model = "Super_Samson", name = "Super_Samson", price = 0, trunk = 300, type = "vip" },
-- 
-- -- Exclusivos
-- 
-- [GetHashKey("bmci")] = { model = "bmci", name = "bmci", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("r8hycade")] = { model = "r8hycade", name = "r8hycade", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("m2hycadev2")] = { model = "m2hycadev2", name = "m2hycadev2", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("m2prior")] = { model = "m2prior", name = "m2prior", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("m4hardcore")] = { model = "m4hardcore", name = "m4hardcore", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("m4speedhunter")] = { model = "m4speedhunter", name = "m4speedhunter", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("owlbmwxmforgi2024")] = { model = "owlbmwxmforgi2024", name = "owlbmwxmforgi2024", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("chironspeedhunter")] = { model = "chironspeedhunter", name = "chironspeedhunter", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("choilambo")] = { model = "choilambo", name = "choilambo", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("crownbp")] = { model = "crownbp", name = "crownbp", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("DBdemondurango")] = { model = "DBdemondurango", name = "DBdemondurango", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("escaladeprime")] = { model = "escaladeprime", name = "escaladeprime", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("pistahycade")] = { model = "pistahycade", name = "pistahycade", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("sf90")] = { model = "sf90", name = "sf90", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("hycf40")] = { model = "hycf40", name = "hycf40", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("GODzDRKHRSESBWB")] = { model = "GODzDRKHRSESBWB", name = "GODzDRKHRSESBWB", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("machewb")] = { model = "machewb", name = "machewb", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("rrformulawide")] = { model = "rrformulawide", name = "rrformulawide", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("gcmlamboultimae")] = { model = "gcmlamboultimae", name = "gcmlamboultimae", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("h2m")] = { model = "h2m", name = "h2m", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("fk8")] = { model = "fk8", name = "fk8", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("jes21")] = { model = "jes21", name = "jes21", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("Urus_Stretch_6")] = { model = "Urus_Stretch_6", name = "Urus_Stretch_6", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("senna")] = { model = "senna", name = "senna", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("G63Sam")] = { model = "G63Sam", name = "G63Sam", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("2018s650p")] = { model = "2018s650p", name = "2018s650p", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("CarsonsHycadeR35")] = { model = "CarsonsHycadeR35", name = "CarsonsHycadeR35", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("nismo20")] = { model = "nismo20", name = "nismo20", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("s15lunarr")] = { model = "s15lunarr", name = "s15lunarr", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("r36fp")] = { model = "r36fp", name = "r36fp", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("r35legend")] = { model = "r35legend", name = "r35legend", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("silvia666")] = { model = "silvia666", name = "silvia666", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("s15silhouette")] = { model = "s15silhouette", name = "s15silhouette", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("theutopiad")] = { model = "theutopiad", name = "theutopiad", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("mk4brutal")] = { model = "mk4brutal", name = "mk4brutal", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("venatus")] = { model = "venatus", name = "venatus", price = 0, trunk = 300, type = "vip" },
-- 
-- 
-- -- Carretas
-- 
-- [GetHashKey("fanpounder")] = { model = "fanpounder", name = "fanpounder", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("fcxl")] = { model = "fcxl", name = "fcxl", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("VironMichalski")] = { model = "VironMichalski", name = "VironMichalski", price = 0, trunk = 300, type = "vip" },
-- 
-- 
-- -- Brasileiros
-- 
-- [GetHashKey("specialtf")] = { model = "specialtf", name = "specialtf", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("zl1")] = { model = "zl1", name = "zl1", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("RYGBus")] = { model = "RYGBus", name = "RYGBus", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("amarok")] = { model = "amarok", name = "amarok", price = 0, trunk = 150, type = "vip" },
-- [GetHashKey("rmodmk7")] = { model = "rmodmk7", name = "rmodmk7", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("golf1")] = { model = "golf1", name = "golf1", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("golf7")] = { model = "golf7", name = "golf7", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("passat")] = { model = "passat", name = "passat", price = 0, trunk = 300, type = "vip" },
-- 
-- -- Blindados
-- 
-- [GetHashKey("BC_Purosangue")] = { model = "BC_Purosangue", name = "BC_Purosangue", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("BC_Escaladeprime")] = { model = "BC_Escaladeprime", name = "BC_Escaladeprime", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("BC_hycadeevo")] = { model = "BC_hycadeevo", name = "BC_hycadeevo", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("p1lbwk")] = { model = "p1lbwk", name = "p1lbwk", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("BC_MercedesGT63")] = { model = "BC_MercedesGT63", name = "BC_MercedesGT63", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("BC_SkylineR34")] = { model = "BC_SkylineR34", name = "BC_SkylineR34", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("BC_gt3hycade")] = { model = "BC_gt3hycade", name = "BC_gt3hycade", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("hycadesti")] = { model = "hycadesti", name = "hycadesti", price = 0, trunk = 300, type = "vip" },
-- 
-- 
-- -- Barcos
-- 
-- [GetHashKey("yachtm")] = { model = "yachtm", name = "yachtm", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("sr650fly")] = { model = "sr650fly", name = "sr650fly", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("samho")] = { model = "samho", name = "samho", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("predator108")] = { model = "predator108", name = "predator108", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("franco125")] = { model = "franco125", name = "franco125", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("explorer")] = { model = "explorer", name = "explorer", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("babyfastbarco")] = { model = "babyfastbarco", name = "babyfastbarco", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("amels200")] = { model = "amels200", name = "amels200", price = 0, trunk = 300, type = "vip" },
-- [GetHashKey("aeroboatsv12")] = { model = "aeroboatsv12", name = "aeroboatsv12", price = 0, trunk = 300, type = "vip" },

-- POLICIA -- HP --
[GetHashKey('blindadocore')] = { model = 'blindadocore', price = nil, banned = false, name = 'Blindado Core', trunk = 200, type = 'service' },
[GetHashKey('blindadocpp')] = { model = 'blindadocpp', price = nil, banned = false, name = 'Blindado CPP', trunk = 200, type = 'service' },
[GetHashKey('blindadodre')] = { model = 'blindadodre', price = nil, banned = false, name = 'Blindado DRE', trunk = 200, type = 'service' },
[GetHashKey('blindadodrfc')] = { model = 'blindadodrfc', price = nil, banned = false, name = 'Blindado DRFC', trunk = 200, type = 'service' },
[GetHashKey('blindadomike')] = { model = 'blindadomike', price = nil, banned = false, name = 'Blindado Mike', trunk = 200, type = 'service' },
[GetHashKey('blindadopmerj')] = { model = 'blindadopmerj', price = nil, banned = false, name = 'Blindado PMERJ', trunk = 200, type = 'service' },
[GetHashKey('blindadopmerj14')] = { model = 'blindadopmerj14', price = nil, banned = false, name = 'Blindado PMERJ 14', trunk = 200, type = 'service' },
[GetHashKey('blindadoturq')] = { model = 'blindadoturq', price = nil, banned = false, name = 'Blindado Turquesa', trunk = 200, type = 'service' },
[GetHashKey('corollapcerj')] = { model = 'corollapcerj', price = nil, banned = false, name = 'Corolla PCERJ', trunk = 200, type = 'service' },
[GetHashKey('corollapmerj')] = { model = 'corollapmerj', price = nil, banned = false, name = 'Corolla PMERJ', trunk = 200, type = 'service' },
[GetHashKey('dusterpmerj')] = { model = 'dusterpmerj', price = nil, banned = false, name = 'Duster PMERJ', trunk = 200, type = 'service' },
[GetHashKey('falcaopcerj')] = { model = 'falcaopcerj', price = nil, banned = false, name = 'Falcão PCERJ', trunk = 200, type = 'service' },
[GetHashKey('fenixpmerj')] = { model = 'fenixpmerj', price = nil, banned = false, name = 'Fênix PMERJ', trunk = 200, type = 'service' },
[GetHashKey('fordkapmerj')] = { model = 'fordkapmerj', price = nil, banned = false, name = 'Ford Ka PMERJ', trunk = 200, type = 'service' },
[GetHashKey('hiluxbope')] = { model = 'hiluxbope', price = nil, banned = false, name = 'Hilux BOPE', trunk = 200, type = 'service' },
[GetHashKey('hiluxgam')] = { model = 'hiluxgam', price = nil, banned = false, name = 'Hilux GAM', trunk = 200, type = 'service' },
[GetHashKey('hiluxpmerj')] = { model = 'hiluxpmerj', price = nil, banned = false, name = 'Hilux PMERJ', trunk = 200, type = 'service' },
[GetHashKey('hiluxrecom')] = { model = 'hiluxrecom', price = nil, banned = false, name = 'Hilux RECOM', trunk = 200, type = 'service' },
[GetHashKey('hueypmerj')] = { model = 'hueypmerj', price = nil, banned = false, name = 'Huey PMERJ', trunk = 200, type = 'service' },
[GetHashKey('hueypcerj')] = { model = 'hueypcerj', price = nil, banned = false, name = 'Huey PCERJ', trunk = 200, type = 'service' },
[GetHashKey('l200choquesm')] = { model = 'l200choquesm', price = nil, banned = false, name = 'L200 Choque SM', trunk = 200, type = 'service' },
[GetHashKey('l200coe')] = { model = 'l200coe', price = nil, banned = false, name = 'L200 COE', trunk = 200, type = 'service' },
[GetHashKey('l200gam')] = { model = 'l200gam', price = nil, banned = false, name = 'L200 GAM', trunk = 200, type = 'service' },
[GetHashKey('l200pmerj22')] = { model = 'l200pmerj22', price = nil, banned = false, name = 'L200 PMERJ 22', trunk = 200, type = 'service' },
[GetHashKey('l200pmerj22c')] = { model = 'l200pmerj22c', price = nil, banned = false, name = 'L200 PMERJ 22 C', trunk = 200, type = 'service' },
[GetHashKey('rangerbope')] = { model = 'rangerbope', price = nil, banned = false, name = 'Ranger BOPE', trunk = 200, type = 'service' },
[GetHashKey('rangerbopesm')] = { model = 'rangerbopesm', price = nil, banned = false, name = 'Ranger BOPE SM', trunk = 200, type = 'service' },
[GetHashKey('rangerbpve')] = { model = 'rangerbpve', price = nil, banned = false, name = 'Ranger BPVE', trunk = 200, type = 'service' },
[GetHashKey('rangerbveg')] = { model = 'rangerbveg', price = nil, banned = false, name = 'Ranger BVEG', trunk = 200, type = 'service' },
[GetHashKey('rangeriespp')] = { model = 'rangeriespp', price = nil, banned = false, name = 'Ranger IESP', trunk = 200, type = 'service' },
[GetHashKey('rangercore')] = { model = 'rangercore', price = nil, banned = false, name = 'Ranger CORE', trunk = 200, type = 'service' },
[GetHashKey('rangercorec')] = { model = 'rangercorec', price = nil, banned = false, name = 'Ranger CORE C', trunk = 200, type = 'service' },
[GetHashKey('rangerpcerj')] = { model = 'rangerpcerj', price = nil, banned = false, name = 'Ranger PCERJ', trunk = 200, type = 'service' },
[GetHashKey('rangerpcerj22')] = { model = 'rangerpcerj22', price = nil, banned = false, name = 'Ranger PCERJ 22', trunk = 200, type = 'service' },
[GetHashKey('rangerpcerj')] = { model = 'rangerpcerj', price = nil, banned = false, name = 'Ranger PCERJ', trunk = 200, type = 'service' },
[GetHashKey('rangerpmerj')] = { model = 'rangerpmerj', price = nil, banned = false, name = 'Ranger PMERJ', trunk = 200, type = 'service' },
[GetHashKey('rangerpmp')] = { model = 'rangerpmp', price = nil, banned = false, name = 'Ranger PMP', trunk = 200, type = 'service' },
[GetHashKey('rangerptm')] = { model = 'rangerptm', price = nil, banned = false, name = 'Ranger PTM', trunk = 200, type = 'service' },
[GetHashKey('rangerrecom')] = { model = 'rangerrecom', price = nil, banned = false, name = 'Ranger RECOM', trunk = 200, type = 'service' },
[GetHashKey('rangerrecomg')] = { model = 'rangerrecomg', price = nil, banned = false, name = 'Ranger RECOM G', trunk = 200, type = 'service' },
[GetHashKey('rangerxlspmerj')] = { model = 'rangerxlspmerj', price = nil, banned = false, name = 'Ranger XLS PMERJ', trunk = 200, type = 'service' },
[GetHashKey('s10bpve')] = { model = 's10bpve', price = nil, banned = false, name = 'S10 BPVE', trunk = 200, type = 'service' },
[GetHashKey('s10recom')] = { model = 's10recom', price = nil, banned = false, name = 'S10 RECOM', trunk = 200, type = 'service' },
[GetHashKey('s10recom16')] = { model = 's10recom16', price = nil, banned = false, name = 'S10 RECOM 16', trunk = 200, type = 'service' },
[GetHashKey('sprintergesar')] = { model = 'sprintergesar', price = nil, banned = false, name = 'Sprinter GESAR', trunk = 200, type = 'service' },
[GetHashKey('sprinterpcerj')] = { model = 'sprinterpcerj', price = nil, banned = false, name = 'Sprinter PCERJ', trunk = 200, type = 'service' },
[GetHashKey('sprintersamu')] = { model = 'sprintersamu', price = nil, banned = false, name = 'Sprinter SAMU', trunk = 200, type = 'service' },
[GetHashKey('sprintersamu2')] = { model = 'sprintersamu2', price = nil, banned = false, name = 'Sprinter SAMU 2', trunk = 200, type = 'service' },
[GetHashKey('sw4recom')] = { model = 'sw4recom', price = nil, banned = false, name = 'SW4 RECOM', trunk = 200, type = 'service' },
[GetHashKey('sw4recom24')] = { model = 'sw4recom24', price = nil, banned = false, name = 'SW4 RECOM 24', trunk = 200, type = 'service' },
[GetHashKey('sw4recom24p')] = { model = 'sw4recom24p', price = nil, banned = false, name = 'SW4 RECOM 24P', trunk = 200, type = 'service' },
[GetHashKey('tigergetem')] = { model = 'tigergetem', price = nil, banned = false, name = 'Tiger GETEM', trunk = 200, type = 'service' },
[GetHashKey('versapcerj')] = { model = 'versapcerj', price = nil, banned = false, name = 'Versa PCERJ', trunk = 200, type = 'service' },
[GetHashKey('versapmerj')] = { model = 'versapmerj', price = nil, banned = false, name = 'Versa PMERJ', trunk = 200, type = 'service' },
[GetHashKey('versapmerjrf')] = { model = 'versapmerjrf', price = nil, banned = false, name = 'Versa PMERJ RF', trunk = 200, type = 'service' },
[GetHashKey('xrepmerj')] = { model = 'xrepmerj', price = nil, banned = false, name = 'XRE PMERJ', trunk = 200, type = 'service' },
[GetHashKey('xrepmerj22')] = { model = 'xrepmerj22', price = nil, banned = false, name = 'XRE PMERJ 22', trunk = 200, type = 'service' },
[GetHashKey('fordkabp')] = { model = 'fordkabp', price = nil, banned = false, name = 'Ford Ka BP', trunk = 200, type = 'service' },
[GetHashKey('frontiercbmerj')] = { model = 'frontiercbmerj', price = nil, banned = false, name = 'Frontier CBMERJ', trunk = 200, type = 'service' },
[GetHashKey('frontiercbmerj19')] = { model = 'frontiercbmerj19', price = nil, banned = false, name = 'Frontier CBMERJ 19', trunk = 200, type = 'service' },
[GetHashKey('golg8sp')] = { model = 'golg8sp', price = nil, banned = false, name = 'Gol G8 SP', trunk = 200, type = 'service' },
[GetHashKey('hiluxcpam')] = { model = 'hiluxcpam', price = nil, banned = false, name = 'Hilux CPAM', trunk = 200, type = 'service' },
[GetHashKey('hiluxwcpam')] = { model = 'hiluxwcpam', price = nil, banned = false, name = 'Hilux W CPAM', trunk = 200, type = 'service' },
[GetHashKey('hiluxptm')] = { model = 'hiluxptm', price = nil, banned = false, name = 'Hilux PTM', trunk = 200, type = 'service' },
[GetHashKey('l200bac')] = { model = 'l200bac', price = nil, banned = false, name = 'L200 BAC', trunk = 200, type = 'service' },
[GetHashKey('l200bac22')] = { model = 'l200bac22', price = nil, banned = false, name = 'L200 BAC 22', trunk = 200, type = 'service' },
[GetHashKey('l200bpchq')] = { model = 'l200bpchq', price = nil, banned = false, name = 'L200 BPCHQ', trunk = 200, type = 'service' },
[GetHashKey('l200choque')] = { model = 'l200choque', price = nil, banned = false, name = 'L200 Choque', trunk = 200, type = 'service' },
[GetHashKey('l200cpam')] = { model = 'l200cpam', price = nil, banned = false, name = 'L200 CPAM', trunk = 200, type = 'service' },
[GetHashKey('l200pmerj')] = { model = 'l200pmerj', price = nil, banned = false, name = 'L200 PMERJ', trunk = 200, type = 'service' },
[GetHashKey('l200pmerjb')] = { model = 'l200pmerjb', price = nil, banned = false, name = 'L200 PMERJ B', trunk = 200, type = 'service' },
[GetHashKey('l200rpmontb')] = { model = 'l200rpmontb', price = nil, banned = false, name = 'L200 RPMONT B', trunk = 200, type = 'service' },
[GetHashKey('peugeot208sp')] = { model = 'peugeot208sp', price = nil, banned = false, name = 'Peugeot 208 SP', trunk = 200, type = 'service' },
[GetHashKey('rangerac')] = { model = 'rangerac', price = nil, banned = false, name = 'Ranger AC', trunk = 200, type = 'service' },
[GetHashKey('rangerbpchq')] = { model = 'rangerbpchq', price = nil, banned = false, name = 'Ranger BPCHQ', trunk = 200, type = 'service' },
[GetHashKey('rangercbmerj')] = { model = 'rangercbmerj', price = nil, banned = false, name = 'Ranger CBMERJ', trunk = 200, type = 'service' },
[GetHashKey('rangerdefcivil')] = { model = 'rangerdefcivil', price = nil, banned = false, name = 'Ranger Defesa Civil', trunk = 200, type = 'service' },
[GetHashKey('rangergrr')] = { model = 'rangergrr', price = nil, banned = false, name = 'Ranger GRR', trunk = 200, type = 'service' },
[GetHashKey('rangerpf')] = { model = 'rangerpf', price = nil, banned = false, name = 'Ranger PF', trunk = 200, type = 'service' },
[GetHashKey('rangerprf')] = { model = 'rangerprf', price = nil, banned = false, name = 'Ranger PRF', trunk = 200, type = 'service' },
[GetHashKey('rangerprfblind')] = { model = 'rangerprfblind', price = nil, banned = false, name = 'Ranger PRF Blindado', trunk = 200, type = 'service' },
[GetHashKey('rangerseap')] = { model = 'rangerseap', price = nil, banned = false, name = 'Ranger SEAP', trunk = 200, type = 'service' },
[GetHashKey('rangerxlcpam')] = { model = 'rangerxlcpam', price = nil, banned = false, name = 'Ranger XLS CPAM', trunk = 200, type = 'service' },
[GetHashKey('rangerxls')] = { model = 'rangerxls', price = nil, banned = false, name = 'Ranger XLS', trunk = 200, type = 'service' },
[GetHashKey('rangerxlsbpchq')] = { model = 'rangerxlsbpchq', price = nil, banned = false, name = 'Ranger XLS BPCHQ', trunk = 200, type = 'service' },
[GetHashKey('rangerxlsbpchqg')] = { model = 'rangerxlsbpchqg', price = nil, banned = false, name = 'Ranger XLS BPCHQ G', trunk = 200, type = 'service' },
[GetHashKey('rangerxlscpam')] = { model = 'rangerxlscpam', price = nil, banned = false, name = 'Ranger XLS CPAM', trunk = 200, type = 'service' },
[GetHashKey('s10pcerj')] = { model = 's10pcerj', price = nil, banned = false, name = 'S10 PCERJ', trunk = 200, type = 'service' },
[GetHashKey('s10pmerj')] = { model = 's10pmerj', price = nil, banned = false, name = 'S10 PMERJ', trunk = 200, type = 'service' },
[GetHashKey('sprinterbpchq')] = { model = 'sprinterbpchq', price = nil, banned = false, name = 'Sprinter BPCHQ', trunk = 200, type = 'service' },
[GetHashKey('sprintercbmerj')] = { model = 'sprintercbmerj', price = nil, banned = false, name = 'Sprinter CBMERJ', trunk = 200, type = 'service' },
[GetHashKey('sprintersoegse')] = { model = 'sprintersoegse', price = nil, banned = false, name = 'Sprinter SOE GSE', trunk = 200, type = 'service' },
[GetHashKey('taiblazercot')] = { model = 'taiblazercot', price = nil, banned = false, name = 'Trailblazer COT', trunk = 200, type = 'service' },
[GetHashKey('tailblazergrr')] = { model = 'tailblazergrr', price = nil, banned = false, name = 'Trailblazer GRR', trunk = 200, type = 'service' },
[GetHashKey('tailblazerpf')] = { model = 'tailblazerpf', price = nil, banned = false, name = 'Trailblazer PF', trunk = 200, type = 'service' },
[GetHashKey('tailblazerprf')] = { model = 'tailblazerprf', price = nil, banned = false, name = 'Trailblazer PRF', trunk = 200, type = 'service' },
[GetHashKey('tailblazer24prf')] = { model = 'tailblazer24prf', price = nil, banned = false, name = 'Trailblazer 24 PRF', trunk = 200, type = 'service' },
[GetHashKey('versadesc')] = { model = 'versadesc', price = nil, banned = false, name = 'Versa DESC', trunk = 200, type = 'service' },
[GetHashKey('xregit')] = { model = 'xregit', price = nil, banned = false, name = 'XRE GIT', trunk = 200, type = 'service' },
[GetHashKey('yarispmp')] = { model = 'yarispmp', price = nil, banned = false, name = 'Yaris PMP', trunk = 200, type = 'service' },
[GetHashKey('yarissp')] = { model = 'yarissp', price = nil, banned = false, name = 'Yaris SP', trunk = 200, type = 'service' },





 --- CARROS COMUNS (CONCE)
 [GetHashKey("guardian")] = { model = "Guardian", name = "Guardian", price = 580000, trunk = 150, type = "outros" },
 [GetHashKey("contender")] = { model = "contender", name = "contender", price = 380000, trunk = 150, type = "outros" },
 [GetHashKey('veto2')] = { model = 'veto2', price = 900000, banned = false, name = 'Veto 2', trunk = 200, type = 'outros'},
 [GetHashKey('golfgti')] = { model = 'golfgti', price = 900000, banned = false, name = 'golfgti', trunk = 200, type = 'outros'},
 [GetHashKey('subaruimpreza')] = { model = 'subaruimpreza', price = 900000, banned = false, name = 'Subaru Impreza', trunk = 300, type = 'outros'},
 [GetHashKey('caddy')] = { model = 'caddy', price = 900000, banned = false, name = 'Caddy', trunk = 200, type = 'outros'},
 [GetHashKey('dominator6')] = { model = 'dominator6', price = 900000, banned = false, name = 'Dominator 6', trunk = 200, type = 'outros'},
 [GetHashKey('openwheel2')] = { model = 'openwheel2', price = 900000, banned = false, name = 'Open Wheel', trunk = 200, type = 'outros'},
 [GetHashKey('tractor')] = { model = 'tractor', price = 50000, banned = false, name = 'Tractor', trunk = 200, type = 'outros'},
 [GetHashKey('imorgon')] = { model = 'imorgon', price = 900000, banned = false, name = 'Imorgon', trunk = 200, type = 'outros' },
 [GetHashKey('issi7')] = { model = 'issi7', price = 400000, banned = false, name = 'Issi 7', trunk = 200, type = 'outros'},
 [GetHashKey('locust')] = { model = 'locust', price = nil0, banned = false, name = 'Ocelot', trunk = 200, type = 'outros' },
 [GetHashKey('neo')] = { model = 'neo', price = nil0, banned = false, name = 'Neo', trunk = 200, type = 'outros' },
 [GetHashKey('penumbra2')] = { model = 'penumbra2', price = 600000, banned = false, name = 'Penumbra 2', trunk = 200, type = 'outros' },
 [GetHashKey('revolter')] = { model = 'revolter', price = nil, banned = false, name = 'Revolter', trunk = 200, type = 'outros' },
 [GetHashKey('schafter2')] = { model = 'schafter2', price = 100000, banned = false, name = 'Schafter 2', trunk = 200, type = 'outros' },
 [GetHashKey('blista')] = { model = 'blista', price = 90000, banned = false, name = 'Blista', trunk = 200, type = 'outros'},
 [GetHashKey('paragon')] = { model = 'paragon', price = 800000, banned = false, name = 'Paragon', trunk = 200, type = 'outros' },
 [GetHashKey('jugular')] = { model = 'jugular', price = 700000, banned = false, name = 'Jugular', trunk = 200, type = 'outros' },
 [GetHashKey('komoda')] = { model = 'komoda', price = 850000, banned = false, name = 'Komoda', trunk = 200, type = 'outros' },
 [GetHashKey('drafter')] = { model = 'drafter', price = 800000, banned = false, name = 'Drafter', trunk = 200, type = 'outros' },
 [GetHashKey('club')] = { model = 'club', price = 800000, banned = false, name = 'Club', trunk = 200, type = 'outros' },
 [GetHashKey('kanjo')] = { model = 'kanjo', price = 90000, banned = false, name = 'Kanjo', trunk = 200, type = 'outros'},
 [GetHashKey('issi5')] = { model = 'issi5', price = nil, banned = false, name = 'Issi 5', trunk = 200, type = 'outros' },
 [GetHashKey('issi4')] = { model = 'issi4', price = nil, banned = false,  name = 'Issi 4', trunk = 200, type = 'outros' },
 [GetHashKey('panto')] = { model = 'panto', price = 5000, banned = false, name = 'Panto', trunk = 200, type = 'carros' },
 [GetHashKey('italirsx')] = { model = 'italirsx', price = nil, banned = false, name = 'ItaliRSX', trunk = 200, type = 'outros' },
 [GetHashKey('vstr')] = { model = 'vstr', price = nil, banned = false, name = 'Vstr', trunk = 200, type = 'outros' },
 [GetHashKey('sultan2')] = { model = 'sultan2', price = 500000, banned = false, name = 'Sultan 2', trunk = 200, type = 'outros' },
 [GetHashKey('dynasty')] = { model = 'dynasty', price = nil, banned = false, name = 'Dynasty', trunk = 200, type = 'outros' },
 [GetHashKey('manana2')] = { model = 'manana2', price = 300000, banned = false, name = 'Manana 2', trunk = 200, type = 'outros' },
 [GetHashKey('peyote3')] = { model = 'peyote3', price = 300000, banned = false, name = 'Peyote 3', trunk = 200, type = 'outros' },
 [GetHashKey('retinue2')] = { model = 'retinue2', price = 300000, banned = false, name = 'Retinue 2', trunk = 200, type = 'outros' },
 [GetHashKey('savestra')] = { model = 'savestra', price = 400000, banned = false, name = 'Savestra', trunk = 200, type = 'outros' },
 [GetHashKey('brioso')] = { model = 'brioso', price = 45000, banned = false, name = 'Brioso', trunk = 200, type = 'outros' },
 [GetHashKey('brioso2')] = { model = "brioso2", price = 70000, banned = false, name = "Brioso 2", trunk = 200, type = 'outros' },
 [GetHashKey('dilettante')] = { model = 'dilettante', price = 100000, banned = false, name = 'Dilettante', trunk = 200, type = 'outros' },
 [GetHashKey('primo2')] = { model = 'primo2', price = 150000, banned = false, name = 'Primo2', trunk = 200, type = 'carros' },
 [GetHashKey('chino')] = { model = 'chino', price = 150000, banned = false, name = 'Chino', trunk = 200, type = 'outros' },
 [GetHashKey('chino2')] = { model = 'chino2', price = 600000, banned = false, name = 'Chino2', trunk = 200, type = 'outros' },
 [GetHashKey('coquette3')] = { model = 'coquette3', price = nil, banned = false, name = 'Coquette3', trunk = 200, type = 'outros' },
 [GetHashKey('dominator')] = { model = 'dominator', price = nil, banned = false, name = 'Dominator', trunk = 200, type = 'outros' },
 [GetHashKey('dominator2')] = { model = 'dominator2', price = 300000, banned = false, name = 'Dominator2', trunk = 200, type = 'outros' },
 [GetHashKey('dukes')] = { model = 'dukes', price = nil, banned = false, name = 'Dukes', trunk = 200, type = 'outros' },
 [GetHashKey('faction')] = { model = 'faction', price = 140000, banned = false, name = 'Faction', trunk = 200, type = 'outros' },
 [GetHashKey('faction2')] = { model = 'faction2', price = 500000, banned = false, name = 'Faction2', trunk = 200, type = 'outros' },
 [GetHashKey('faction3')] = { model = 'faction3', price = 500000, banned = false, name = 'Faction3', trunk = 200, type = 'outros' },
 [GetHashKey('gauntlet4')] = { model = 'gauntlet4', price = nil, banned = false, name = 'Gauntlet 4', trunk = 200, type = 'outros' },
 [GetHashKey('gauntlet3')] = { model = 'gauntlet3', price = 150000, banned = false, name = 'Gauntlet 3', trunk = 200, type = 'outros' },
 [GetHashKey('gauntlet2')] = { model = 'gauntlet2', price = 400000, banned = false, name = 'Gauntlet2', trunk = 200, type = 'outros' },
 [GetHashKey('hermes')] = { model = 'hermes', price = nil, banned = false, name = 'Hermes', trunk = 200, type = 'outros' },
 [GetHashKey('hotknife')] = { model = 'hotknife', price = 500000, banned = false, name = 'Hotknife', trunk = 200, type = 'outros' },
 [GetHashKey('moonbeam')] = { model = 'moonbeam', price = nil, banned = false, name = 'Moonbeam', trunk = 200, type = 'outros' },
 [GetHashKey('moonbeam2')] = { model = 'moonbeam2', price = 5000000, banned = false, name = 'Moonbeam2', trunk = 200, type = 'outros' },
 [GetHashKey('nightshade')] = { model = 'nightshade', price = 450000, banned = false, name = 'Nightshade', trunk = 200, type = 'outros' },
 [GetHashKey('picador')] = { model = 'picador', price = nil, banned = false, name = 'Picador', trunk = 200, type = 'outros' },
 [GetHashKey('ruiner')] = { model = 'ruiner', price = 100000, banned = false, name = 'Ruiner', trunk = 200, type = 'outros' },
 [GetHashKey('sabregt')] = { model = 'sabregt', price = 120000, banned = false, name = 'Sabregt', trunk = 200, type = 'outros' },
 [GetHashKey('sabregt2')] = { model = 'sabregt2', price = 150000, banned = false, name = 'Sabregt2', trunk = 200, type = 'outros' },
 [GetHashKey('stalion')] = { model = 'stalion', price = 400000, banned = false, name = 'Stalion', trunk = 200, type = 'outros' },
 [GetHashKey('stalion2')] = { model = 'stalion2', price = 260000, banned = false, name = 'Stalion2', trunk = 200, type = 'outros' },
 [GetHashKey('tampa')] = { model = 'tampa', price = nil, banned = false, name = 'Tampa', trunk = 200, type = 'outros' },
 [GetHashKey('vigero')] = { model = 'vigero', price = 170000, banned = false, name = 'Vigero', trunk = 200, type = 'outros' },
 [GetHashKey('virgo')] = { model = 'virgo', price = 150000, banned = false, name = 'Virgo', trunk = 200, type = 'outros' },
 [GetHashKey('virgo2')] = { model = 'virgo2', price = 150000, banned = false, name = 'Virgo2', trunk = 200, type = 'outros' },
 [GetHashKey('virgo3')] = { model = 'virgo3', price = 150000, banned = false, name = 'Virgo3', trunk = 200, type = 'outros' },
 [GetHashKey('voodoo')] = { model = 'voodoo', price = 300000, banned = false, name = 'Voodoo', trunk = 200, type = 'outros' },
 [GetHashKey('voodoo2')] = { model = 'voodoo2', price = 100000, banned = false, name = 'Voodoo2', trunk = 200, type = 'outros' },
 [GetHashKey('yosemite')] = { model = 'yosemite', price = 800000, banned = false, name = 'Yosemite', trunk = 200, type = 'outros' },
 [GetHashKey('yosemite3')] = { model = 'yosemite3', price = nil, banned = false, name = 'Yosemite 3', trunk = 200, type = 'outros' },
 [GetHashKey('dloader')] = { model = 'dloader', price = 150000, banned = false, name = 'Dloader', trunk = 200, type = 'outros' },
 [GetHashKey('brawler')] = { model = 'brawler', price = 4000000, banned = false, name = 'Brawler', trunk = 200, type = 'outros' },
 [GetHashKey('sandking2')] = { model = 'sandking2', price = 2500000, banned = false, name = 'Sandking2', trunk = 200, type = 'outros' },
 -- [GetHashKey('viseris')] = { model = 'viseris', price = 600000, banned = false, name = 'Viseris', trunk = 30, type = 'outros' },
 [GetHashKey('xls2')] = { model = 'xls2', price = 350000, banned = false, name = 'Xls2', trunk = 200, type = 'outros' },
 [GetHashKey('squaddie')] = { model = 'squaddie', price = 350000, banned = false, name = 'squaddie', trunk = 200, type = 'outros' },
 [GetHashKey('cog552')] = { model = 'cog552', price = nil, banned = false, name = 'Cog552', trunk = 200, type = 'outros' },
 [GetHashKey('cognoscenti')] = { model = 'cognoscenti', price = 190000, banned = false, name = 'Cognoscenti', trunk = 200, type = 'outros' },
 [GetHashKey('cognoscenti2')] = { model = 'cognoscenti2', price = nil, banned = false, name = 'Cognoscenti2', trunk = 200, type = 'outros' },
 [GetHashKey('alpha')] = { model = 'alpha', price = nil, banned = false, name = 'Alpha', trunk = 200, type = 'outros' },
 [GetHashKey('banshee')] = { model = 'banshee', price = 300000, banned = false, name = 'Banshee', trunk = 200, type = 'outros' },
 [GetHashKey('bestiagts')] = { model = 'bestiagts', price = 400000, banned = false, name = 'Bestiagts', trunk = 200, type = 'outros' },
 [GetHashKey('blista2')] = { model = 'blista2', price = 100000, banned = false, name = 'Blista2', trunk = 200, type = 'outros' },
 [GetHashKey('blista3')] = { model = 'blista3', price = nil, banned = false, name = 'Blista3', trunk = 200, type = 'outros' },
 [GetHashKey('buffalo')] = { model = 'buffalo', price = 450000, banned = false, name = 'Buffalo', trunk = 200, type = 'outros' },
 [GetHashKey('buffalo2')] = { model = 'buffalo2', price = 450000, banned = false, name = 'Buffalo2', trunk = 200, type = 'outros' },
 [GetHashKey('buffalo3')] = { model = 'buffalo3', price = 400000, banned = false, name = 'Buffalo3', trunk = 200, type = 'outros' },
 [GetHashKey('carbonizzare')] = { model = 'carbonizzare', price = nil, banned = false, name = 'Carbonizzare', trunk = 200, type = 'outros' },
 [GetHashKey('comet2')] = { model = 'comet2', price = 400000, banned = false, name = 'Comet2', trunk = 200, type = 'outros' },
 [GetHashKey('comet3')] = { model = 'comet3', price = 500000, banned = false, name = 'Comet3', trunk = 200, type = 'outros' },
 [GetHashKey('comet5')] = { model = 'comet5', price = 1250000, banned = false, name = 'Comet5', trunk = 200, type = 'outros' },
 [GetHashKey('coquette')] = { model = 'coquette', price = 500000, banned = false, name = 'Coquette', trunk = 200, type = 'outros' },
 [GetHashKey('coquette4')] = { model = 'coquette4', price = 8000000, banned = false, name = 'Coquette 4', trunk = 200, type = 'outros' },
 [GetHashKey('elegy')] = { model = 'elegy', price = 500000, banned = false, name = 'Elegy', trunk = 200, type = 'outros' },
 [GetHashKey('elegy2')] = { model = 'elegy2', price = 400000, banned = false, name = 'Elegy2', trunk = 200, type = 'outros' },
 [GetHashKey('feltzer2')] = { model = 'feltzer2', price = nil, banned = false, name = 'Feltzer2', trunk = 200, type = 'outros' },
 [GetHashKey('furoregt')] = { model = 'furoregt', price = nil, banned = false, name = 'Furoregt', trunk = 200, type = 'carros' },
 [GetHashKey('fusilade')] = { model = 'fusilade', price = nil, banned = false, name = 'Fusilade', trunk = 200, type = 'carros' },
 [GetHashKey('futo')] = { model = 'futo', price = 150000, banned = false, name = 'Futo', trunk = 200, type = 'outros' },
 [GetHashKey('jester')] = { model = 'jester', price = 5000000, banned = false, name = 'Jester', trunk = 200, type = 'outros' },
 [GetHashKey('khamelion')] = { model = 'khamelion', price = nil, banned = false, name = 'Khamelion', trunk = 200, type = 'outros' },
 [GetHashKey('kuruma')] = { model = 'kuruma', price = 7500000, banned = false, name = 'Kuruma', trunk = 200, type = 'outros' },
 [GetHashKey('massacro')] = { model = 'massacro', price = 750000, banned = false, name = 'Massacro', trunk = 200, type = 'outros' },
 [GetHashKey('massacro2')] = { model = 'massacro2', price = nil, banned = false, name = 'Massacro2', trunk = 200, type = 'outros' },
 [GetHashKey('ninef')] = { model = 'ninef', price = 950000, banned = false, name = 'Ninef', trunk = 200, type = 'carros' },
 [GetHashKey('ninef2')] = { model = 'ninef2', price = 950000, banned = false, name = 'Ninef2', trunk = 200, type = 'carros' },
 [GetHashKey('omnis')] = { model = 'omnis', price = nil, banned = false, name = 'Omnis', trunk = 200, type = 'outros' },
 [GetHashKey('pariah')] = { model = 'pariah', price = 950000, banned = false, name = 'Pariah', trunk = 200, type = 'outros' },
 [GetHashKey('penumbra')] = { model = 'penumbra', price = 800000, banned = false, name = 'Penumbra', trunk = 200, type = 'outros' },
 [GetHashKey('raiden')] = { model = 'raiden', price = 850000, banned = false, name = 'Raiden', trunk = 200, type = 'outros' },
 [GetHashKey('rapidgt')] = { model = 'rapidgt', price = 800000, banned = false, name = 'Rapidgt', trunk = 200, type = 'outros' },
 [GetHashKey('rapidgt2')] = { model = 'rapidgt2', price = nil, banned = false, name = 'Rapidgt2', trunk = 200, type = 'outros' },
 [GetHashKey('ruston')] = { model = 'ruston', price = 3000000, banned = false, name = 'Ruston', trunk = 200, type = 'outros' },
 [GetHashKey('schafter3')] = { model = 'schafter3', price = 300000, banned = false, name = 'Schafter3', trunk = 200, type = 'carros' },
 [GetHashKey('schafter4')] = { model = 'schafter4', price = 250000, banned = false, name = 'Schafter4', trunk = 200, type = 'outros' },
 [GetHashKey('schafter5')] = { model = 'schafter5', price = 175000, banned = false, name = 'Schafter5', trunk = 200, type = 'outros' },
 [GetHashKey('schwarzer')] = { model = 'schwarzer', price = 250000, banned = false, name = 'Schwarzer', trunk = 200, type = 'outros' },
 [GetHashKey('sentinel3')] = { model = 'sentinel3', price = nil, banned = false, name = 'Sentinel3', trunk = 200, type = 'outros' },
 [GetHashKey('seven70')] = { model = 'seven70', price = nil, banned = false, name = 'Seven70', trunk = 200, type = 'outros' },
 [GetHashKey('specter')] = { model = 'specter', price = nil0, banned = false, name = 'Specter', trunk = 200, type = 'outros' },
 [GetHashKey('specter2')] = { model = 'specter2', price = 900000, banned = false, name = 'Specter2', trunk = 200, type = 'outros' },
 [GetHashKey('streiter')] = { model = 'streiter', price = 600000, banned = false, name = 'Streiter', trunk = 200, type = 'outros' },
 [GetHashKey('sultan')] = { model = 'sultan', price = 800000, banned = false, name = 'Sultan', trunk = 200, type = 'carros' },
 [GetHashKey('surano')] = { model = 'surano', price = nil, banned = false, name = 'Surano', trunk = 200, type = 'outros' },
 [GetHashKey('tampa2')] = { model = 'tampa2', price = 300000, banned = false, name = 'Tampa2', trunk = 200, type = 'outros' },
 [GetHashKey('tropos')] = { model = 'tropos', price = 450000, banned = false, name = 'Tropos', trunk = 200, type = 'outros' },
 [GetHashKey('verlierer2')] = { model = 'verlierer2', price = 350000, banned = false, name = 'Verlierer2', trunk = 200, type = 'outros' },
 [GetHashKey('btype')] = { model = 'btype', price = nil, banned = false, name = 'Btype', trunk = 200, type = 'outros' },
 [GetHashKey('btype2')] = { model = 'btype2', price = nil, banned = false, name = 'Btype2', trunk = 200, type = 'outros' },
 [GetHashKey('btype3')] = { model = 'btype3', price = nil, banned = false, name = 'Btype3', trunk = 200, type = 'outros' },
 [GetHashKey('casco')] = { model = 'casco', price = 500000, banned = false, name = 'Casco', trunk = 200, type = 'outros' },
 [GetHashKey('cheetah')] = { model = 'cheetah', price = nil, banned = false, name = 'Cheetah', trunk = 200, type = 'imports' },
 [GetHashKey('coquette2')] = { model = 'coquette2', price = 400000, banned = false, name = 'Coquette2', trunk = 200, type = 'outros' },
 [GetHashKey('feltzer3')] = { model = 'feltzer3', price = 390000, banned = false, name = 'Feltzer3', trunk = 200, type = 'outros' },
 [GetHashKey('gt500')] = { model = 'gt500', price = 600000, banned = false, name = 'GT500', trunk = 200, type = 'outros' },
 [GetHashKey('infernus2')] = { model = 'infernus2', price = nil, banned = false, name = 'Infernus2', trunk = 200, type = 'outros' },
 [GetHashKey('jb700')] = { model = 'jb700', price = 250000, banned = false, name = 'Jb700', trunk = 200, type = 'outros' },
 [GetHashKey('mamba')] = { model = 'mamba', price = 400000, banned = false, name = 'Mamba', trunk = 200, type = 'outros' },
 [GetHashKey('manana')] = { model = 'manana', price = 75000, banned = false, name = 'Manana', trunk = 200, type = 'outros' },
 [GetHashKey('monroe')] = { model = 'monroe', price = 400000, banned = false, name = 'Monroe', trunk = 200, type = 'outros' },
 [GetHashKey('peyote')] = { model = 'peyote', price = 80000, banned = false, name = 'Peyote', trunk = 200, type = 'outros' },
 [GetHashKey('pigalle')] = { model = 'pigalle', price = 80000, banned = false, name = 'Pigalle', trunk = 200, type = 'outros' },
 [GetHashKey('rapidgt3')] = { model = 'rapidgt3', price = 650000, banned = false, name = 'Rapidgt3', trunk = 200, type = 'outros' },
 [GetHashKey('retinue')] = { model = 'retinue', price = nil, banned = false, name = 'Retinue', trunk = 200, type = 'outros' },
 [GetHashKey('stinger')] = { model = 'stinger', price = 450000, banned = false, name = 'Stinger', trunk = 200, type = 'outros' },
 [GetHashKey('stingergt')] = { model = 'stingergt', price = 400000, banned = false, name = 'Stingergt', trunk = 200, type = 'outros' },
 [GetHashKey('torero')] = { model = 'torero', price = 300000, banned = false, name = 'Torero', trunk = 200, type = 'outros' },
 [GetHashKey('tornado')] = { model = 'tornado', price = 100000, banned = false, name = 'Tornado', trunk = 200, type = 'outros' },
 [GetHashKey('tornado2')] = { model = 'tornado2', price = 300000, banned = false, name = 'Tornado2', trunk = 200, type = 'outros' },
 [GetHashKey('tornado5')] = { model = 'tornado5', price = 500000, banned = false, name = 'Tornado5', trunk = 200, type = 'outros' },
 [GetHashKey('tornado6')] = { model = 'tornado6', price = 800000, banned = false, name = 'Tornado6', trunk = 200, type = 'outros' },
 [GetHashKey('turismo2')] = { model = 'turismo2', price = nil, banned = false, name = 'Turismo2', trunk = 200, type = 'outros' },
 [GetHashKey('ztype')] = { model = 'ztype', price = nil, banned = false, name = 'Ztype', trunk = 200, type = 'outros' },
 [GetHashKey('adder')] = { model = 'adder', price = 700000, banned = false, name = 'Adder', trunk = 200, type = 'outros' },
 [GetHashKey('cheetah2')] = { model = 'cheetah2', price = nil, banned = false, name = 'Cheetah2', trunk = 2600, type = 'outros' },
 [GetHashKey('bison')] = { model = 'bison', price = nil, banned = false, name = 'Bison', trunk = 200, type = 'outros' },
 [GetHashKey('bison2')] = { model = 'bison2', price = nil, banned = false, name = 'Bison2', trunk = 200, type = 'outros' },
 [GetHashKey('bobcatxl')] = { model = 'bobcatxl', price = 650000, banned = false, name = 'Bobcatxl', trunk = 200, type = 'outros' },
 [GetHashKey('burrito')] = { model = 'burrito', price = nil, banned = false, name = 'Burrito', trunk = 200, type = 'outros' },
 [GetHashKey('burrito2')] = { model = 'burrito2', price = 3000000, banned = false, name = 'Burrito2', trunk = 200, type = 'outros' },
 [GetHashKey('burrito3')] = { model = 'burrito3', price = 4000000, banned = false, name = 'Burrito3', trunk = 200, type = 'outros' },
 [GetHashKey('burrito4')] = { model = 'burrito4', price = 5000000, banned = false, name = 'Burrito4', trunk = 200, type = 'outros' },
 [GetHashKey('minivan')] = { model = 'minivan', price = 800000, banned = false, name = 'Minivan', trunk = 200, type = 'outros' },
 [GetHashKey('minivan2')] = { model = 'minivan2', price = 5000000, banned = false, name = 'Minivan2', trunk = 200, type = 'outros' },
 [GetHashKey('paradise')] = { model = 'paradise', price = nil, banned = false, name = 'Paradise', trunk = 200, type = 'outros' },
 [GetHashKey('pony')] = { model = 'pony', price = 160000, banned = false, name = 'Pony', trunk = 200, type = 'outros' },
 [GetHashKey('pony2')] = { model = 'pony2', price = nil0, banned = false, name = 'Pony2', trunk = 200, type = 'outros' },
 [GetHashKey('surfer')] = { model = 'surfer', price = 500000, banned = false, name = 'Surfer', trunk = 200, type = 'outros' },
 [GetHashKey('cheburek')] = { model = 'cheburek', price = 230000, banned = false, name = 'Cheburek', trunk = 200, type = 'outros' },
 [GetHashKey('hotring')] = { model = 'hotring', price = 500000, banned = false, name = 'Hotring', trunk = 200, type = 'outros' },
 [GetHashKey('jester3')] = { model = 'jester3', price = nil, banned = false, name = 'Jester3', trunk = 200, type = 'carros' },
 [GetHashKey('flashgt')] = { model = 'flashgt', price = 700000, banned = false, name = 'Flashgt', trunk = 200, type = 'outros' },
 [GetHashKey('ellie')] = { model = 'ellie', price = 400000, banned = false, name = 'Ellie', trunk = 200, type = 'outros' },
 [GetHashKey('michelli')] = { model = 'michelli', price = nil, banned = false, name = 'Michelli', trunk = 200, type = 'carros' },
 [GetHashKey('fagaloa')] = { model = 'fagaloa', price = 100000, banned = false, name = 'Fagaloa', trunk = 200, type = 'outros' },
 [GetHashKey('dominator3')] = { model = 'dominator3', price = 400000, banned = false, name = 'Dominator3', trunk = 200, type = 'outros' },
 [GetHashKey('issi3')] = { model = 'issi3', price = 100000, banned = false, name = 'Issi3', trunk = 200, type = 'outros' },
 [GetHashKey('gb200')] = { model = 'gb200', price = 500000, banned = false, name = 'Gb200', trunk = 200, type = 'outros' },
 [GetHashKey('neon')] = { model = 'neon', price = nil0, banned = false, name = 'Neon', trunk = 200, type = 'outros' },
 [GetHashKey('tezeract')] = { model = 'tezeract', price = 7000000, banned = false, name = 'Tezeract', trunk = 200, type = 'outros' },
 [GetHashKey('swinger')] = { model = 'swinger', price = 550000, banned = false, name = 'Swinger', trunk = 200, type = 'outros' },
 [GetHashKey('clique')] = { model = 'clique', price = nil, banned = false, name = 'Clique', trunk = 200, type = 'outros' },
 [GetHashKey('deveste')] = { model = 'deveste', price = nil0, banned = false, name = 'Deveste', trunk = 200, type = 'outros' },
 [GetHashKey('deviant')] = { model = 'deviant', price = nil, banned = false, name = 'Deviant', trunk = 200, type = 'outros' },
 [GetHashKey('impaler')] = { model = 'impaler', price = 1300000, banned = false, name = 'Impaler', trunk = 200, type = 'outros' },
 [GetHashKey('italigto')] = { model = 'italigto', price = 5000000, banned = false, name = 'Italigto', trunk = 200, type = 'outros' },
 [GetHashKey('schlagen')] = { model = 'schlagen', price = 500000, banned = false, name = 'Schlagen', trunk = 200, type = 'outros' },
 [GetHashKey('tulip')] = { model = 'tulip', price = 850000, banned = false, name = 'Tulip', trunk = 200, type = 'outros' },
 [GetHashKey('vamos')] = { model = 'vamos', price = 900000, banned = false, name = 'Vamos', trunk = 200, type = 'outros' },
 [GetHashKey('lurcher')] = { model = 'lurcher', price = nil, banned = false, name = 'Lurcher', trunk = 200, type = 'carros' },
 [GetHashKey('lynx')] = { model = 'lynx', price = 800000, banned = false, name = 'Lynx', trunk = 200, type = 'outros' },
 [GetHashKey('raptor')] = { model = 'raptor', price = nil, banned = false, name = 'Raptor', trunk = 200, type = 'outros' },
 [GetHashKey('z190')] = { model = 'z190', price = 400000, banned = false, name = 'Z190', trunk = 200, type = 'outros' },
 [GetHashKey('nightblade')] = { model = 'nightblade', price = 800000, banned = false, name = 'Nightblade', trunk = 200, type = 'outros' },
 [GetHashKey('rumpo')] = { model = 'rumpo', price = nil, banned = false, name = 'Rumpo', trunk = 200, type = 'outros' },
 [GetHashKey('rumpo2')] = { model = 'rumpo2', price = 160000, banned = false, name = 'Rumpo2', trunk = 200, type = 'outros' },
 [GetHashKey('youga')] = { model = 'youga', price = nil, banned = false, name = 'Youga', trunk = 200, type = 'outros' },

 [GetHashKey('mule')] = { model = 'mule', price = nil, banned = false, name = 'mule', trunk = 5000, type = 'outros' },
 [GetHashKey('mule2')] = { model = 'mule2', price = nil, banned = false, name = 'mule2', trunk = 5000, type = 'outros' },
 
 
 

 --[[TYPE = carros]]-- 
 [GetHashKey('intruder')] = { model = 'intruder', price = 90000, banned = false, name = 'Intruder', trunk = 200, type = 'carros' },
 [GetHashKey('exemplar')] = { model = 'exemplar', price = 250000, banned = false, name = 'Exemplar', trunk = 200, type = 'carros' },
 [GetHashKey('f620')] = { model = 'f620', price = 160000, banned = false, name = 'F620', trunk = 200, type = 'carros' },
 [GetHashKey('felon')] = { model = 'felon', price = 300000, banned = false, name = 'Felon', trunk = 200, type = 'carros' },
 [GetHashKey('ingot')] = { model = 'ingot', price = 100000, banned = false, name = 'Ingot', trunk = 200, type = 'carros' },
 [GetHashKey('jackal')] = { model = 'jackal', price = nil, banned = false, name = 'Jackal', trunk = 200, type = 'carros' },
 [GetHashKey('oracle')] = { model = 'oracle', price = 120000, banned = false, name = 'Oracle', trunk = 200, type = 'carros' },
 [GetHashKey('oracle2')] = { model = 'oracle2', price = 150000, banned = false, name = 'Oracle2', trunk = 200, type = 'carros' },
 [GetHashKey('sentinel')] = { model = 'sentinel', price = 140000, banned = false, name = 'Sentinel', trunk = 200, type = 'carros' },
 [GetHashKey('sentinel2')] = { model = 'sentinel2', price = 130000, banned = false, name = 'Sentinel2', trunk = 200, type = 'carros' },
 [GetHashKey('windsor')] = { model = 'windsor', price = 220000, banned = false, name = 'Windsor', trunk = 200, type = 'carros' },
 [GetHashKey('windsor2')] = { model = 'windsor2', price = 170000, banned = false, name = 'Windsor2', trunk = 200, type = 'carros' },
 [GetHashKey('zion')] = { model = 'zion', price = 150000, banned = false, name = 'Zion', trunk = 200, type = 'carros' },
 [GetHashKey('zion2')] = { model = 'zion2', price = 300000, banned = false, name = 'Zion2', trunk = 200, type = 'carros' },
 [GetHashKey('blade')] = { model = 'blade', price = 150000, banned = false, name = 'Blade', trunk = 200, type = 'carros' },
 [GetHashKey('buccaneer')] = { model = 'buccaneer', price = nil, banned = false, name = 'Buccaneer', trunk = 200, type = 'carros' },
 [GetHashKey('buccaneer2')] = { model = 'buccaneer2', price = 500000, banned = false, name = 'Buccaneer2', trunk = 200, type = 'carros' },
 [GetHashKey('primo')] = { model = 'primo', price = 130000, banned = false, name = 'Primo', trunk = 200, type = 'carros' },
 [GetHashKey('issi2')] = { model = 'issi2', price = nil, banned = false, name = 'Issi2', trunk = 200, type = 'carros' },
 [GetHashKey('prairie')] = { model = 'prairie', price = 80000, banned = false, name = 'Prairie', trunk = 200, type = 'carros' },
 [GetHashKey('rhapsody')] = { model = 'rhapsody', price = 10000, banned = false, name = 'Rhapsody', trunk = 200, type = 'carros' },
 [GetHashKey('cogcabrio')] = { model = 'cogcabrio', price = 220000, banned = false, name = 'Cogcabrio', trunk = 200, type = 'carros' },
 [GetHashKey('emperor')] = { model = 'emperor', price = 70000, banned = false, name = 'Emperor', trunk = 200, type = 'carros' },
 [GetHashKey('emperor2')] = { model = 'emperor2', price = 100000, banned = false, name = 'Emperor 2', trunk = 200, type = 'carros' },
 [GetHashKey('emperor3')] = { model = 'emperor3', price = 100000, banned = false, name = 'Emperor 3', trunk = 200, type = 'carros' },
 [GetHashKey('phoenix')] = { model = 'phoenix', price = 160000, banned = false, name = 'Phoenix', trunk = 200, type = 'carros' },
 [GetHashKey('glendale')] = { model = 'glendale', price = 80000, banned = false, name = 'Glendale', trunk = 200, type = 'carros' }, 
 [GetHashKey('glendale2')] = { model = 'glendale2', price = 900000, banned = false, name = 'Glendale 2', trunk = 200, type = 'carros' },
 [GetHashKey('regina')] = { model = 'regina', price = nil, banned = false,  name = 'Regina', trunk = 200, type = 'carros' },
 [GetHashKey('romero')] = { model = 'romero', price = 500000, banned = false, name = 'Funerário', trunk = 200, type = 'carros' },
 [GetHashKey('superd')] = { model = 'superd', price = 500000, banned = false, name = 'superd', trunk = 200, type = 'carros' },
 [GetHashKey('stretch')] = { model = 'stretch', price = nil, banned = false, name = 'Limousine', trunk = 200, type = 'carros' },
 [GetHashKey('asea')] = { model = 'asea', price = 100000, banned = false, name = 'Asea', trunk = 200, type = 'carros' },
 [GetHashKey('asea2')] = { model = 'asea2', price = 100000, banned = false, name = 'Asea2', trunk = 200, type = 'carros' },
 [GetHashKey('asterope')] = { model = 'asterope', price = 150000, banned = false, name = 'Asterope', trunk = 200, type = 'carros' },
 [GetHashKey('cog55')] = { model = 'cog55', price = nil, banned = false, name = 'Cog55', trunk = 200, type = 'carros' },
 [GetHashKey('stanier')] = { model = 'stanier', price = 130000, banned = false, name = 'Stanier', trunk = 200, type = 'carros' },
 [GetHashKey('stratum')] = { model = 'stratum', price = 100000, banned = false, name = 'Stratum', trunk = 200, type = 'carros' },
 [GetHashKey('importsd')] = { model = 'importsd', price = 150000, banned = false, name = 'importsd', trunk = 200, type = 'carros' },
 [GetHashKey('surge')] = { model = 'surge', price = 220000, banned = false, name = 'Surge', trunk = 200, type = 'carros' },
 [GetHashKey('tailgater')] = { model = 'tailgater', price = 160000, banned = false, name = 'Tailgater', trunk = 200, type = 'carros' },
 [GetHashKey('tailgater2')] = { model = 'tailgater2', price = 160000, banned = false, name = 'tailgater2', trunk = 200, type = 'carros' },
 [GetHashKey('warrener')] = { model = 'warrener', price = 100000, banned = false, name = 'Warrener', trunk = 200, type = 'carros' },
 [GetHashKey('washington')] = { model = 'washington', price = 150000, banned = false, name = 'Washington', trunk = 200, type = 'carros' },
 [GetHashKey('fugitive')] = { model = 'fugitive', price = 190000, banned = false, name = 'Fugitive', trunk = 200, type = 'carros' },
 [GetHashKey('stafford')] = { model = 'stafford', price = nil, banned = false, name = 'Stafford', trunk = 200, type = 'carros' },
 [GetHashKey('sugoi')] = { model = 'sugoi', price = nil, banned = false, name = 'Sugoi', trunk = 200, type = 'carros' },
 [GetHashKey('fiatstilo')] = { model = 'fiatstilo', price = nil, banned = false, name = 'Fiat Stilo', trunk = 200, type = 'carros' },
 [GetHashKey('limo2')] = { model = 'limo2', price = nil, banned = false, name = 'limo2', trunk = 200, type = 'carros' },

------------------------------------------------------------------------------------------------------------------------------------------------------

 --[[VEÍCULOS EMPREGOS SERVICE]]--
 --barcos service
 [GetHashKey('dinghy')] = { model = 'dinghy', price = nil, banned = false, name = 'Dinghy', trunk = 200, type = 'service' },
 [GetHashKey('dinghy2')] = { model = 'dinghy2', price = nil, banned = false, name = 'Dinghy 2', trunk = 200, type = 'service' },
 [GetHashKey('dinghy3')] = { model = 'dinghy3', price = nil, banned = false, name = 'Dinghy 3', trunk = 200, type = 'service' },
 [GetHashKey('dinghy4')] = { model = 'dinghy4', price = nil, banned = false, name = 'Dinghy 4', trunk = 200, type = 'service' },
 ---outros service
 [GetHashKey('speedo')] = { model = 'speedo', price = 500000, banned = false, name = 'Speedo', trunk = 200, type = 'service' },
 [GetHashKey('tractor2')] = { model = 'tractor2', price = 160000, banned = false, name = 'Tractor2', trunk = 200, type = 'service' },
 [GetHashKey('bus')] = { model = 'bus', price = nil, banned = false, name = 'Ônibus', trunk = 0, type = 'service' },

 [GetHashKey('trash2')] = { model = 'trash2', price = nil, banned = false, name = 'Caminhão', trunk = 200, type = 'service' }, --lixeiro
 [GetHashKey('tiptruck')] = { model = 'tiptruck', price = nil, banned = false, name = 'Tiptruck', trunk = 200, type = 'service' }, --minerador
 
 ----BICICLETAS SPAWN
 [GetHashKey('scorcher')] = { model = 'scorcher', price = nil, banned = false, name = 'Scorcher', trunk = 0, type = 'service' },
 [GetHashKey('tribike')] = { model = 'tribike', price = nil, banned = false, name = 'Tribike', trunk = 0, type = 'service' },
 [GetHashKey('tribike2')] = { model = 'tribike2', price = nil, banned = false, name = 'Tribike2', trunk = 0, type = 'service' },
 [GetHashKey('tribike3')] = { model = 'tribike3', price = nil, banned = false, name = 'Tribike3', trunk = 0, type = 'service' },
 [GetHashKey('fixter')] = { model = 'fixter', price = nil, banned = false, name = 'Fixter', trunk = 0, type = 'service' },
 [GetHashKey('cruiser')] = { model = 'cruiser', price = nil, banned = false, name = 'Cruiser', trunk = 0, type = 'service' },
 [GetHashKey('bmx')] = { model = 'bmx', price = 20000, banned = false, name = 'Bmx', trunk = 0, type = 'service' },

 
 ------------------------------------------------------------------------------------------------------------------------------------------------------
 --IMPORTADOS 
 [GetHashKey('furia')] = { model = 'furia', price = nil0, banned = false, name = 'Furia', trunk = 100, type = 'imports' },
 [GetHashKey('krieger')] = { model = 'krieger', price = 4000000, banned = false, name = 'Krieger', trunk = 100, type = 'imports', },
 [GetHashKey('emerus')] = { model = 'emerus', price = nil0, banned = false, name = 'Emerus', trunk = 100, type = 'imports' },
 [GetHashKey('zorrusso')] = { model = 'zorrusso', price = 3500000, banned = false, name = 'Zorrusso', trunk = 100, type = 'imports'  },
 [GetHashKey('thrax')] = { model = 'thrax', price = 5000000, banned = false, name = 'Thrax', trunk = 100, type = 'imports' },
 [GetHashKey('s80')] = { model = 's80', price = nil0, banned = false, name = 'S80', trunk = 100, type = 'imports' },
 [GetHashKey('tigon')] = { model = 'tigon', price = nil0, banned = false, name = 'Tigon', trunk = 100, type = 'imports' },
 [GetHashKey('autarch')] = { model = 'autarch', price = 3000000, banned = false, name = 'Autarch', trunk = 100, type = 'imports' },
 [GetHashKey('banshee2')] = { model = 'banshee2', price = 700000, banned = false, name = 'Banshee2', trunk = 100, type = 'imports' },
 [GetHashKey('bullet')] = { model = 'bullet', price = 800000, banned = false, name = 'Bullet', trunk = 100, type = 'imports' },
 [GetHashKey('entityxf')] = { model = 'entityxf', price = 1500000, banned = false, name = 'Entityxf', trunk = 100, type = 'carros' },
 [GetHashKey('fmj')] = { model = 'fmj', price = 1200000, banned = false, name = 'Fmj', trunk = 100, type = 'imports' },
 [GetHashKey('gp1')] = { model = 'gp1', price = nil0, banned = false, name = 'Gp1', trunk = 100, type = 'imports' },
 [GetHashKey('infernus')] = { model = 'infernus', price = 700000, banned = false, name = 'Infernus', trunk = 100, type = 'imports' },
 [GetHashKey('nero')] = { model = 'nero', price = 4500000, banned = false, name = 'Nero', trunk = 100, type = 'imports' },
 [GetHashKey('nero2')] = { model = 'nero2', price = 3000000, banned = false, name = 'Nero2', trunk = 100, type = 'imports' },
 [GetHashKey('osiris')] = { model = 'osiris', price = 4000000, banned = false, name = 'Osiris', trunk = 100, type = 'imports' },
 [GetHashKey('penetrator')] = { model = 'penetrator', price = 1200000, banned = false, name = 'Penetrator', trunk = 100, type = 'imports' },
 [GetHashKey('pfister811')] = { model = 'pfister811', price = nil0, banned = false, name = 'Pfister811', trunk = 100, type = 'imports' },
 [GetHashKey('reaper')] = { model = 'reaper', price = 2500000, banned = false, name = 'Reaper', trunk = 100, type = 'imports' },
 [GetHashKey('sc1')] = { model = 'sc1', price = 2500000, banned = false, name = 'Sc1', trunk = 100, type = 'imports' },
 [GetHashKey('scramjet')] = { model = 'scramjet', price = 2500000, banned = false, name = 'scramjet', trunk = 100, type = 'imports' },
 [GetHashKey('sultanrs')] = { model = 'sultanrs', price = nil0, banned = false, name = 'Sultan RS', trunk = 100, type = 'imports' },
 [GetHashKey('italigtb2')] = { model = 'italigtb2', price = nil0, banned = false, name = 'italigtb2', trunk = 100, type = 'imports' },
 [GetHashKey('t20')] = { model = 't20', price = 2500000, banned = false, name = 'T20', trunk = 100, type = 'carros' },
 [GetHashKey('tempesta')] = { model = 'tempesta', price = 4000000, banned = false, name = 'Tempesta', trunk = 100, type = 'imports' },
 [GetHashKey('turismor')] = { model = 'turismor', price = 5000000, banned = false, name = 'Turismor', trunk = 100, type = 'imports' },
 [GetHashKey('tyrus')] = { model = 'tyrus', price = 1200000, banned = false, name = 'Tyrus', trunk = 100, type = 'imports' },
 [GetHashKey('vacca')] = { model = 'vacca', price = nil0, banned = false, name = 'Vacca', trunk = 100, type = 'imports' },
 [GetHashKey('visione')] = { model = 'visione', price = nil0, banned = false, name = 'Visione', trunk = 100, type = 'imports' },
 [GetHashKey('voltic')] = { model = 'voltic', price = 800000, banned = false, name = 'Voltic', trunk = 100, type = 'imports' },
 [GetHashKey('voltic2')] = { model = 'voltic2', price = 800000, banned = false, name = 'voltic2', trunk = 100, type = 'imports' },
 [GetHashKey('zentorno')] = { model = 'zentorno', price = nil0, banned = false, name = 'Zentorno', trunk = 100, type = 'imports' },
 [GetHashKey('tyrant')] = { model = 'tyrant', price = 5000000, banned = false, name = 'Tyrant', trunk = 100, type = 'imports' },
 [GetHashKey('entity2')] = { model = 'entity2', price = nil0, banned = false, name = 'Entity2', trunk = 100, type = 'imports' },
 [GetHashKey('entity3')] = { model = 'entity3', price = nil0, banned = false, name = 'entity3', trunk = 100, type = 'imports' },
 [GetHashKey('jester2')] = { model = "jester2", price = nil0, banned = false, name = 'Jester 2', trunk = 100, type = 'imports'},
 [GetHashKey('taipan')] = { model = 'taipan', price = nil0, banned = false, name = 'Taipan', trunk = 100, type = 'imports' },
 [GetHashKey('cyclone')] = { model = 'cyclone', price = nil0, banned = false, name = 'Cyclone', trunk = 100, type = 'imports' },
 [GetHashKey('italigtb')] = { model = 'italigtb', price = nil0, banned = false, name = 'Italigtb', trunk = 100, type = 'imports' },
 [GetHashKey('italigtb2')] = { model = 'italigtb2', price = nil0, banned = false, name = 'Italigtb2', trunk = 100, type = 'imports' },
 [GetHashKey('vagner')] = { model = 'vagner', price = nil0, banned = false, name = 'Vagner', trunk = 100, type = 'imports' },
 [GetHashKey('vigilante')] = { model = 'vigilante', price = nil0, banned = false, name = 'vigilante', trunk = 100, type = 'imports' },
 [GetHashKey('virtue')] = { model = 'virtue', price = nil0, banned = false, name = 'virtue', trunk = 100, type = 'imports' },
 [GetHashKey('xa21')] = { model = 'xa21', price = nil0, banned = false, name = 'Xa21', trunk = 100, type = 'imports' },
 [GetHashKey('prototipo')] = { model = 'prototipo', price = nil0, banned = false, name = 'Prototipo', trunk = 100, type = 'imports' },
 [GetHashKey('le7b')] = { model = 'le7b', price = 3000000, banned = false, name = 'Le7b', trunk = 100, type = 'imports' },
 [GetHashKey('sheava')] = { model = 'sheava', price = 4000000, banned = false, name = 'Sheava', trunk = 100, type = 'imports' },
 [GetHashKey('dodgechargersrt')] = { model = 'dodgechargersrt', price = nil0, banned = false, name = 'Dodge Charger SRT', trunk = 100, type = 'import' },
 [GetHashKey('beetle74')] = { model = 'beetle74', price = 500000, banned = false, name = 'Fusca 74', trunk = 100, type = 'import' },
 [GetHashKey('fe86')] = { model = 'fe86', price = 500000, banned = false, name = 'Escorte', trunk = 100, type = 'import' },
 [GetHashKey('type263')] = { model = 'type263', price = 500000, banned = false, name = 'Kombi 63', trunk = 100, type = 'import' },
 
 ----------MOTOS	
 [GetHashKey('verus')] = { model = 'verus', price = nil, banned = false, name = 'Verus', trunk = 40, type = 'motos' },
 [GetHashKey('akuma')] = { model = 'akuma', price = 750000, banned = false, name = 'Akuma', trunk = 40, type = 'motos' },
 [GetHashKey('avarus')] = { model = 'avarus', price = nil, banned = false, name = 'Avarus', trunk = 40, type = 'motos' },
 [GetHashKey('bagger')] = { model = 'bagger', price = nil, banned = false, name = 'Bagger', trunk = 40, type = 'motos' },
 [GetHashKey('bati')] = { model = 'bati', price = nil, banned = false, name = 'Bati', trunk = 40, type = 'motos' },
 [GetHashKey('bati2')] = { model = 'bati2', price = 800000, banned = false, name = 'Bati2', trunk = 40, type = 'motos' },
 [GetHashKey('bf400')] = { model = 'bf400', price = nil, banned = false, name = 'Bf400', trunk = 40, type = 'motos' },
 [GetHashKey('carbonrs')] = { model = 'carbonrs', price = 800000, banned = false, name = 'Carbonrs', trunk = 40, type = 'motos' },
 [GetHashKey('chimera')] = { model = 'chimera', price = 400000, banned = false, name = 'Chimera', trunk = 40, type = 'motos' },
 [GetHashKey('cliffhanger')] = { model = 'cliffhanger', price = 250000, banned = false, name = 'Cliffhanger', trunk = 40, type = 'motos' },
 [GetHashKey('daemon')] = { model = 'daemon', price = nil, banned = false, name = 'Daemon', trunk = 40, type = 'motos' },
 [GetHashKey('daemon2')] = { model = 'daemon2', price = nil, banned = false, name = 'Daemon2', trunk = 40, type = 'motos' },
 [GetHashKey('defiler')] = { model = 'defiler', price = 700000, banned = false, name = 'Defiler', trunk = 40, type = 'motos' },
 [GetHashKey('diablous')] = { model = 'diablous', price = 500000, banned = false, name = 'Diablous', trunk = 40, type = 'motos' },
 [GetHashKey('diablous2')] = { model = 'diablous2', price = 700000, banned = false, name = 'Diablous2', trunk = 40, type = 'motos' },
 [GetHashKey('double')] = { model = 'double', price = 800000, banned = false, name = 'Double', trunk = 40, type = 'motos' },
 [GetHashKey('enduro')] = { model = 'enduro', price = 400000, banned = false, name = 'Enduro', trunk = 40, type = 'motos' },
 [GetHashKey('esskey')] = { model = 'esskey', price = 400000, banned = false, name = 'Esskey', trunk = 40, type = 'motos' },
 [GetHashKey('faggio')] = { model = 'faggio', price = 4000, banned = false, name = 'Faggio', trunk = 10, type = 'motos' },
 [GetHashKey('faggio2')] = { model = 'faggio2', price = 5000, banned = false, name = 'Faggio2', trunk = 10, type = 'motos' },
 [GetHashKey('faggio3')] = { model = 'faggio3', price = 5000, banned = false, name = 'Faggio3', trunk = 10, type = 'motos' },
 [GetHashKey('fcr')] = { model = 'fcr', price = 300000, banned = false, name = 'Fcr', trunk = 40, type = 'motos' },
 [GetHashKey('fcr2')] = { model = 'fcr2', price = 400000, banned = false, name = 'Fcr2', trunk = 40, type = 'motos' },
 [GetHashKey('gargoyle')] = { model = 'gargoyle', price = 450000, banned = false, name = 'Gargoyle', trunk = 40, type = 'motos' },
 [GetHashKey('hakuchou')] = { model = 'hakuchou', price = 3000000, banned = false, name = 'Hakuchou', trunk = 40, type = 'motos' },
 [GetHashKey('hakuchou2')] = { model = 'hakuchou2', price = nil, banned = false, name = 'Hakuchou2', trunk = 40, type = 'motos' },
 [GetHashKey('hexer')] = { model = 'hexer', price = nil, banned = false, name = 'Hexer', trunk = 40, type = 'motos' },
 [GetHashKey('innovation')] = { model = 'innovation', price = nil, banned = false, name = 'Innovation', trunk = 40, type = 'motos' },
 [GetHashKey('lectro')] = { model = 'lectro', price = nil, banned = false, name = 'Lectro', trunk = 40, type = 'motos' },
 [GetHashKey('manchez')] = { model = 'manchez', price = 800000, banned = false, name = 'Manchez', trunk = 40, type = 'motos' },
 [GetHashKey('nemesis')] = { model = 'nemesis', price = 250000, banned = false, name = 'Nemesis', trunk = 40, type = 'motos' },
 [GetHashKey('pcj')] = { model = 'pcj', price = 300000, banned = false, name = 'Pcj', trunk = 40, type = 'motos' },
 [GetHashKey('ruffian')] = { model = 'ruffian', price = 450000, banned = false, name = 'Ruffian', trunk = 40, type = 'motos' },
 [GetHashKey('sanchez')] = { model = 'sanchez', price = 400000, banned = false, name = 'Sanchez', trunk = 40, type = 'motos' },
 [GetHashKey('sanchez2')] = { model = 'sanchez2', price = 500000, banned = false, name = 'Sanchez2', trunk = 40, type = 'motos' },
 [GetHashKey('sanctus')] = { model = 'sanctus', price = 400000, banned = false, name = 'Sanctus', trunk = 40, type = 'motos' },
 [GetHashKey('sovereign')] = { model = 'sovereign', price = nil, banned = false, name = 'Sovereign', trunk = 40, type = 'motos' },
 [GetHashKey('thrust')] = { model = 'thrust', price = 650000, banned = false, name = 'Thrust', trunk = 40, type = 'motos' },
 [GetHashKey('vader')] = { model = 'vader', price = 400000, banned = false, name = 'Vader', trunk = 40, type = 'motos' },
 [GetHashKey('vindicator')] = { model = 'vindicator', price = nil, banned = false, name = 'Vindicator', trunk = 40, type = 'motos' },
 [GetHashKey('vortex')] = { model = 'vortex', price = 800000, banned = false, name = 'Vortex', trunk = 40, type = 'motos' },
 [GetHashKey('wolfsbane')] = { model = 'wolfsbane', price = 400000, banned = false, name = 'Wolfsbane', trunk = 40, type = 'motos' },
 [GetHashKey('zombiea')] = { model = 'zombiea', price = 250000, banned = false, name = 'Zombiea', trunk = 40, type = 'motos' },
 [GetHashKey('zombieb')] = { model = 'zombieb', price = 250000, banned = false, name = 'Zombieb', trunk = 40, type = 'motos' },
 [GetHashKey('blazer')] = { model = 'blazer', price = 750000, banned = false, name = 'Blazer', trunk = 40, type = 'motos' },
 [GetHashKey('blazer4')] = { model = 'blazer4', price = 800000, banned = false, name = 'Blazer4', trunk = 40, type = 'motos' },
 [GetHashKey('shotaro')] = { model = 'shotaro', price = nil0, banned = false, name = 'Shotaro', trunk = 40, type = 'motos' },
 [GetHashKey('ratbike')] = { model = 'ratbike', price = nil, banned = false, name = 'Ratbike', trunk = 40, type = 'motos' },
    
    
    
    

} 

Garages.List = {
    [1] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(213.91,-808.5,31.02),
        spawnCoords = {
            vec4(221.66,-804.08,30.26,246.48),
        },
    },
    
    [2] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-349.02,-874.66,31.31),
        spawnCoords = {
            vec4(-343.87,-875.67,30.4,168.39),
        },
    },

    [3] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(100.69,-1073.32,29.37),
        spawnCoords = {
            vec4(111.59,-1080.84,28.51,339.03),
        },
    },

    [4] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(713.62,-977.07,24.13),
        spawnCoords = {
            vec4(711.17,-979.56,23.44,230.04),
        },
    },

   -- [5] = {
   --     type = "public", -- public / service [ tipo da garagem ]
   --     permiss = nil, -- permissao
   --     blip = true, -- blip no mapa
   --     
   --     coords = vec3(275.36,-345.07,45.17),
   --     spawnCoords = {
   --         vec4(283.02,-342.35,44.25,248.48),
   --     },
   -- },

    [6] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-692.17,-989.4,20.39),
        spawnCoords = {
            vec4(-701.96,-985.7,19.71,301.01),
        },
    },

    [7] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-1207.51,-1450.23,4.38),
        spawnCoords = {
            vec4(-1205.88,-1443.08,3.71,304.3),
        },
    },

    [8] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-340.95,266.52,85.68),
        spawnCoords = {
            vec4(-348.88,275.98,84.38,271.16),
        },
    },

    [9] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-2030.74,-465.53,11.59),
        spawnCoords = {
            vec4(-2023.95,-471.71,10.73,138.56),
        },
    },

    [10] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-2200.99,4272.57,48.41),
        spawnCoords = {
            vec4(-2194.86,4266.99,47.82,151.69),
        },
    },

    [11] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-773.26,5597.45,33.6),
        spawnCoords = {
            vec4(-771.9,5578.2,32.81,89.73),
        },
    },

    [12] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-102.44,6343.35,31.58),
        spawnCoords = {
            vec4(-97.31,6340.91,30.82,226.94),
        },
    },

    [13] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(1959.02,3761.23,32.2),
        spawnCoords = {
            vec4(1956.41,3767.5,31.53,35.02),
        },
    },

    [14] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(317.11,2622.94,44.45),
        spawnCoords = {
            vec4(335.45,2621.81,43.83,25.05),
        },
    },

    [15] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(1852.78,2594.67,45.66),
        spawnCoords = {
            vec4(1860.39,2593.59,44.99,268.84),
        },
    },

    [16] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(596.75,91.18,93.13),
        spawnCoords = {
            vec4(600.41,97.79,92.24,249.04),
        },
    },

    [17] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(1154.3,-454.85,66.98),
        spawnCoords = {
            vec4(1155.2,-462.59,66.14,165.14),
        },
    },

    [18] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(1163.94,-1537.42,34.85),
        spawnCoords = {
            vec4(1168.21,-1546.2,34.02,271.04),
        },
    },

    [19] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(931.94,-2007.99,30.25),
        spawnCoords = {
            vec4(934.55,-2003.53,29.45,175.12),
        },
    },

    [20] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-66.77,-1840.36,26.77),
        spawnCoords = {
            vec4(-62.24,-1839.53,26.02,319.88),
        },
    },

    [21] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-39.96,-1117.71,26.44),
        spawnCoords = {
            vec4(-47.97,-1115.94,25.76,1.12),
        },
    },

    [22] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(56.0,-876.43,30.65),
        spawnCoords = {
            vec4(47.25,-872.0,29.77,161.55),
        },
    },

    [23] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-337.08,1166.33,324.75),
        spawnCoords = {
            vec4(-343.91,1168.11,324.36,111.51),
        },
    },

    [24] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-1184.17,-1509.71,4.65),
        spawnCoords = {
            vec4(-1183.55,-1495.91,3.71,125.05),
        },
    },

    [25] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-1349.45,125.42,56.23),
        spawnCoords = {
            vec4(-1356.09,133.76,55.59,274.89),
        },
    },

    [26] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-2279.1,402.61,174.6),
        spawnCoords = {
            vec4(-2284.66,406.49,173.79,126.2),
        },
    },

    [27] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(164.89,1695.6,227.398),
        spawnCoords = {
            vector4(173.31,1688.46,227.93,204.33),
        },
    },

    [28] = {
        type = "service", -- public / service [ tipo da garagem ] 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(164.89,1695.6,227.398),
        spawnCoords = {
            vector4(173.31,1688.46,227.93,204.33),
        },
    },

    [29] = {
        type = "service", -- public / service [ tipo da garagem ] 
        permiss = "perm.policiaM", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1011.99,-2290.2,31.81),
        spawnCoords = {
            vector4(1015.27,-2294.03,31.58,37.09),
        },
    
        vehicles = {
            {vehicle = 'corollapmerj'},
            {vehicle = 'rangerptm'},
            {vehicle = 'dusterpmerj'},
            {vehicle = 'fordkapmerj'},
            {vehicle = 'hiluxpmerj'},
            {vehicle = 'l200pmerj22'},
            {vehicle = 'l200pmerj22c'},
            {vehicle = 'rangerpmerj'},
            {vehicle = 'rangerxlspmerj'},
            {vehicle = 'versapmerj'},
            {vehicle = 'versapmerjrf'},
            {vehicle = 'xrepmerj22'},
            {vehicle = 'xrepmerj'},
            {vehicle = 'blindadocpp'},
            {vehicle = 'blindadomike'},
            {vehicle = 'blindadopmerj'},
            {vehicle = 'blindadopmerj14'},
            {vehicle = 'blindadoturq'},

        },
    },

    [30] = {
        type = "service", -- public / service [ tipo da garagem ] -- Helicoptero
        permiss = "perm.policiaM", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1031.9,-2291.9,31.81),
        spawnCoords = {
            vector4(1025.06,-2299.97,31.76,10.72),
        },
    
        vehicles = {
            {vehicle = 'fenixpmerj'},
            {vehicle = 'hueypmerj'}, -- 
        },
    },

    [31] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.bope", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(306.18,-330.01,46.39),
        spawnCoords = {
           vector4(300.31,-340.12,46.34,157.73),
        },
    
        vehicles = {
            {vehicle = 'hiluxbope'},
            {vehicle = 'rangerbope'}, --
            {vehicle = 'rangerbopesm'}, -- 
            {vehicle = 'rangeriespp'}, -- 
            {vehicle = 'hiluxrecom'}, -- 
            {vehicle = 'l200choquesm'}, -- 
            {vehicle = 'l200coe'}, -- 
            {vehicle = 'rangerrecom'}, -- 
            {vehicle = 'rangerrecomg'}, -- 
            {vehicle = 's10recom'}, -- 
            {vehicle = 's10recom16'}, -- 
            {vehicle = 'sw4recom'}, -- 
            {vehicle = 'sw4recom24'}, -- 
            {vehicle = 'sw4recom24p'}, -- 
            {vehicle = 'tigergetem'}, --  
            {vehicle = 'blindadobope'}, --  
            {vehicle = 'urutu'}, -- 

        },
    },

    [32] = {
        type = "service", -- public / service [ tipo da garagem ] -- -792.23,-2568.44,13.95
        permiss = "perm.civil", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(846.23,147.28,82.29),
        spawnCoords = {
            vector4(vector4(838.87,144.1,82.29,324.49)),
        },
    
        vehicles = {
            {vehicle = 'corollapcerj'},
            {vehicle = 's10pcerj'}, --
            {vehicle = 'rangerpcerj'}, -- 
            {vehicle = 'versapcerj'}, -- sprinterpcerj
            {vehicle = 'rangercore'}, -- versapcerj
            {vehicle = 'rangercorec'}, -- 
            {vehicle = 'rangerpcerj'}, -- 
            {vehicle = 'rangerpcerj22'}, -- 
            {vehicle = 'sprintergesar'}, -- 
            {vehicle = 'blindadocore'}, -- 
            {vehicle = 'blindadodre'}, -- 
            {vehicle = 'blindadodrfc'}, -- 

        },
    },
    [33] = {
        type = "public", -- public / service [ tipo da garagem ] -- 1139.03,-183.12,70.36
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-792.23,-2568.44,13.95),
        spawnCoords = {
            vector4(-794.05,-2564.63,13.8,330.89),
        },
    },
    [34] = {
        type = "service", -- public / service [ tipo da garagem ] -- -463.43,-350.51,34.49
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1146.81,-187.45,70.36),
        spawnCoords = {
            vector4(1144.99,-183.07,70.26,147.31),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },
    [35] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1139.03,-183.12,70.36),
        spawnCoords = {
            vector4(1144.99,-183.07,70.26,147.31),
        },
    },
    [36] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.hospital", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-463.43,-350.51,34.49),
        spawnCoords = {
            vector4(-470.47,-350.57,34.37,166.68),
        },
    
        vehicles = {
            {vehicle = 'sprintersamu2'},

        },
    },
    [37] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-461.27,-326.83,34.498),
        spawnCoords = {
            vector4(-465.92,-322.18,34.36,20.24),
        },
    },
    [38] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1177.05,-890.83,13.8),
        spawnCoords = {
            vector4(-1165.18,-887.96,14.14,118.62),
        },
    
        vehicles = {
            {vehicle = '150ifod'},

        },
    },
    [39] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(894.99,-183.37,73.73),
        spawnCoords = {
            vector4(897.13,-183.87,73.75,243.08),
        },
    
        vehicles = {
            {vehicle = 'taxi'},

        },
    },

    
    [40] = {
        type = "service", -- public / service [ tipo da garagem ] -- helicopteros
        permiss = "perm.civil", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(846.23,147.28,82.29),
        spawnCoords = {
            vector4(838.87,144.1,82.29,324.49),
        },
    
        vehicles = {
            {vehicle = 'falcaopcerj'},
            {vehicle = 'hueypcerj'}, --

        },
    },

    [41] = {
        type = "service", -- public / service [ tipo da garagem ] -- helicopteros
        permiss = "perm.mecanico", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(958.54,-1036.11,41.03),
        spawnCoords = {
            vector4(965.53,-1041.82,41.27,266.77),
        },
    
        vehicles = {
            {vehicle = 'bennys1200'},
            {vehicle = 'bennysraptor'}, --
            {vehicle = 'bennysscania'}, --

        },
    },

    [42] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-960.3,-1471.31,5.17),
        spawnCoords = {
            vector4(-967.09,-1473.86,5.02,110.03),
        },
    },
    [43] = {
        type = "service", -- public / service [ tipo da garagem ] -- 1360.69,-2086.33,52.0
        permiss = "perm.yakuza", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-956.32,-1487.31,5.16),
        spawnCoords = {
            vector4(-961.87,-1488.22,5.0,107.43),
        },
    
        vehicles = {
            {vehicle = 'tiger800'},
            {vehicle = 'q820'},
            {vehicle = 'mule'},

        },
    },

    [44] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1360.69,-2086.33,52.0),
        spawnCoords = {
            vector4(1365.67,-2085.04,52.0,313.75),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    
    [45] = {
        type = "public", -- public / service [ tipo da garagem ] -- -1521.19,80.54,56.72
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1363.84,-2090.05,52.0),
        spawnCoords = {
            vector4(vector4(1365.22,-2085.98,52.0,306.29)),
        },
    },

    [46] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1521.19,80.54,56.72),
        spawnCoords = {
            vector4(-1523.64,85.43,56.48,268.2),
        },
    },

    [47] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1531.38,79.4,56.73),
        spawnCoords = {
            vector4(-1523.64,85.43,56.48,268.2),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    [48] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(961.47,-122.69,74.34),
        spawnCoords = {
            vector4(965.64,-127.66,74.34,148.8),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },
    [49] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(974.3,-136.57,74.17),
        spawnCoords = {
            vector4(965.64,-127.66,74.34,148.8),
        },
    },

    [50] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(191.19,695.53,209.06),
        spawnCoords = {
            vector4(185.45,694.98,209.06,356.0),
        },
    },
    

    [51] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(189.42,709.69,209.06),
        spawnCoords = {
            vector4(185.89,707.94,209.06,184.19),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    
    [52] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(906.32,351.97,112.46),
        spawnCoords = {
            vector4(902.92,354.69,112.52,315.92),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    [53] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(921.59,366.27,112.46),
        spawnCoords = {
            vector4(918.06,369.0,112.52,320.3),
        },
    },

    [54] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1416.66,1115.62,114.83),
        spawnCoords = {
            vector4(1416.8,1118.56,114.83,94.95),
        },
    },

    [55] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1398.32,1115.4,114.83),
        spawnCoords = {
            vector4(1398.44,1118.13,114.83,89.36),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    [56] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(2998.25,2920.4,78.6),
        spawnCoords = {
            vector4(2998.48,2918.97,78.47,49.62),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    [57] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(3008.3,2912.52,78.91),
        spawnCoords = {
            vector4(3007.42,2911.07,78.81,227.1),
        },
    },

    [58] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1728.9,4490.97,42.44),
        spawnCoords = {
            vector4(1724.21,4491.51,42.44,0.09),
        },
    },

    [59] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1729.43,4505.36,42.44),
        spawnCoords = {
            vector4(1724.35,4505.06,42.44,180.83),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    [60] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1943.27,4488.12,34.63),
        spawnCoords = {
            vector4(-1948.37,4485.04,34.63,41.45),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    
    [61] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1951.72,4498.28,34.63),
        spawnCoords = {
            vector4(-1955.94,4494.74,34.63,222.67),
        },
    },

    [62] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(381.13,-10.82,82.99),
        spawnCoords = {
            vector4(380.14,-4.95,82.99,129.62),
        },
    },
    
    [63] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1695.19,561.2,154.36
        permiss = "perm.mafia", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(376.09,-13.95,82.99),
        spawnCoords = {
            vector4(372.61,-12.68,82.99,34.89),
        },
    
        vehicles = {
            {vehicle = 'q820'},
            {vehicle = 'tiger800'},
            {vehicle = 'mule'},

        },
    },

    [64] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1683.87,574.44,154.36
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1695.19,561.2,154.36),
        spawnCoords = {
            vector4(-1691.73,560.67,154.36,316.16),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    [65] = {
        type = "public", -- public / service [ tipo da garagem ] -- 147.95,-1294.8,29.64
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1683.85,574.44,154.36),
        spawnCoords = {
            vector4(-1682.37,570.74,154.36,135.14),
        },
    },

    [66] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(147.95,-1294.8,29.64),
        spawnCoords = {
            vector4(149.21,-1300.47,28.98,122.79),
        },
    },

    [67] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(153.39,-1314.21,29.2),
        spawnCoords = {
            vector4(151.05,-1318.68,28.96,237.48),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },
    
    [68] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1391.78,-581.76,30.09),
        spawnCoords = {
            vector4(-1396.43,-584.07,30.14,127.56),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    
    [69] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1400.09,-586.03,30.19),
        spawnCoords = {
            vector4(-1405.88,-589.6,30.25,114.86),
        },
    },
    [70] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-819.49,180.93,71.88),
        spawnCoords = {
            vector4(-823.01,182.47,71.81,138.41),
        },
    },
    [71] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.russia", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-812.66,163.64,71.54),
        spawnCoords = {
            vector4(-823.01,182.47,71.81,138.41),
        },
    
        vehicles = {
            {vehicle = 'tiger800'},
            {vehicle = 'q820'},
            {vehicle = 'mule'},

        },
    },
    [72] = {
        type = "public", -- public / service [ tipo da garagem ] -- -565.72,305.66,83.17
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(2951.42,2753.52,43.41),
        spawnCoords = {
            vector4(2951.79,2748.74,43.49,140.0),
        },
    },

    [73] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-565.72,305.66,83.17),
        spawnCoords = {
            vector4(-559.06,302.48,83.2,260.37),
        },
    },

    [74] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-565.46,298.44,83.07),
        spawnCoords = {
            vector4(-559.06,302.48,83.2,260.37),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    [75] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.helicoptero", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-754.15,-1467.25,4.99),
        spawnCoords = {
            vector4(-745.7,-1467.74,5.0,227.49),
        },
    
        vehicles = {
            {vehicle = 'volatus'},
            {vehicle = 'supervolito'},

        },
    },

    [76] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(126.31,6628.15,31.9),
        spawnCoords = {
            vector4(132.31,6620.17,31.76,207.16),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    [77] = {
        type = "public", -- public / service [ tipo da garagem ] -- 983.95,-1008.29,42.01 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(113.45,6615.64,31.86),
        spawnCoords = {
            vector4(116.67,6612.45,31.88,218.12),
        },
    },
    [78] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(983.95,-1008.29,42.01),
        spawnCoords = {
            vector4(980.33,-1014.9,41.0,273.05),
        },
    },
    [79] = {
        type = "public", -- public / service [ tipo da garagem ] -- -1860.07,321.06,88.71
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1615.2,-2610.48,53.82),
        spawnCoords = {
            vector4(1603.02,-2601.56,53.43,88.13),
        },
    },

    [80] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-255.12,-712.41,33.58),
        spawnCoords = {
            vector4(-245.6,-715.25,33.41,156.31),
        },
    },

   -- [81] = {
   --     type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
   --     permiss = "perm.helicoptero", -- permissao
   --     blip = false, -- blip no mapa
   --     
   --     coords = vec3(-754.15,-1467.25,4.99),
   --     spawnCoords = {
   --         vector4(-277.8,-726.31,131.8,67.28),
   --     },
   -- 
   --     vehicles = {
   --         {vehicle = 'volatus'},
   --         {vehicle = 'supervolito'},
--
   --     },
   -- },

    [82] = {
        type = "public", -- public / service [ tipo da garagem ] -- 2621.89,5312.48,47.53
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1669.26,-219.38,55.12),
        spawnCoords = {
            vector4(-1665.57,-220.47,55.0,250.28),
        },
    },

    [83] = {
        type = "service", -- public / service [ tipo da garagem ] 
        permiss = "perm.prf", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(2621.65,5313.17,47.53),
        spawnCoords = {
            vector4(2619.49,5309.03,47.4,96.42),
        },
    
        vehicles = {
            {vehicle = 'rangerprf'},
            {vehicle = 'rangergrr'},
            {vehicle = 'rangerprfblind'},
            {vehicle = 'trailblazerprf'},
            {vehicle = 'trailblazer24prf'},
            {vehicle = 'trailblazergrr'},   
             {vehicle = 'prf1200'},

        },
    },

    [84] = {
        type = "public", -- public / service [ tipo da garagem ] -- 2621.89,5312.48,47.53
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(2630.75,5339.41,47.26),
        spawnCoords = {
            vector4(2627.28,5338.54,47.3,108.07),
        },
    },

    [85] = {
        type = "public", -- public / service [ tipo da garagem ] -- 2621.89,5312.48,47.53
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1211.96,-1750.41,4.6),
        spawnCoords = {
            vector4(-1215.16,-1754.32,4.5,255.24),
        },
    },

    [86] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1209.07,-1760.55,4.6),
        spawnCoords = {
            vector4(-1198.65,-1757.2,4.4,279.63),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    [87] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.helicoptero", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-275.41,-731.94,130.43),
        spawnCoords = {
            vector4(-277.79,-726.44,131.14,152.27),
        },
    
        vehicles = {
            {vehicle = 'volatus'},
            {vehicle = 'supervolito'},

        },
    },
    
    [88] = {
        type = "public", -- public / service [ tipo da garagem ] -- 2621.89,5312.48,47.53
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-303.44,-726.72,28.02),
        spawnCoords = {
            vector4(-308.58,-731.63,27.36,70.57),
        },
    },

    [89] = {
        type = "public", -- public / service [ tipo da garagem ] -- 2621.89,5312.48,47.53
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2568.18,3733.32,13.41),
        spawnCoords = {
            vector4(-2563.16,3736.11,13.5,261.79),
        },
    },

    [90] = {
        type = "public", -- public / service [ tipo da garagem ] -- 2621.89,5312.48,47.53
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2545.04,3738.35,13.11),
        spawnCoords = {
            vector4(-2536.6,3735.83,13.09,259.3),
        },
    },

    [91] = {
        type = "public", -- public / service [ tipo da garagem ] -- 2621.89,5312.48,47.53
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1353.42,-2439.52,50.92),
        spawnCoords = {
            vector4(1354.26,-2445.34,50.33,149.72),
        },
    },

    [92] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1353.47,-2456.18,49.59),
        spawnCoords = {
            vector4(1346.85,-2463.73,48.97,147.37),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    [93] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(2116.42,3973.18,36.33),
        spawnCoords = {
            vector4(2116.34,3982.37,36.23,337.69),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },
    [94] = {
        type = "public", -- public / service [ tipo da garagem ] -- 923.45,464.75,121.23
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(2105.41,3965.75,36.33),
        spawnCoords = {
            vector4(2099.77,3971.27,35.55,69.6),
        },
    },
    [95] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1391.78,-581.76,30.09),
        spawnCoords = {
            vector4(912.22,465.87,120.83,92.83),
        },
    
        vehicles = {
            {vehicle = 'volatus'},

        },
    },

    [96] = {
        type = "service", -- public / service [ tipo da garagem ] -- -2593.02,1927.75,167.3
        permiss = "perm.mansaoronnald", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1544.99,-2570.07,55.59),
        spawnCoords = {
            vector4(1544.52,-2564.59,56.23,352.58),
        },
    
        vehicles = {
            {vehicle = 'volatus'},
            {vehicle = 'supervolito'},

        },
    },

    [97] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2591.86,1927.92,167.3),
        spawnCoords = {
            vector4(-2587.87,1931.16,167.3,259.15),
        },
    },

    [98] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.civil", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(843.59,141.87,82.29),
        spawnCoords = {
            vector4(834.27,151.63,82.29,51.63),
        },
    
        vehicles = {
            {vehicle = 'corollapcerj'},
            {vehicle = 'falcaopcerj'},
            {vehicle = 'rangerpcerj'},
            {vehicle = 'rangerpcerj22'},
            {vehicle = 'sprinterpcerj'},
            {vehicle = 'rangerpcerj'},
            {vehicle = 'versapcerj'},
            {vehicle = 's10pcerj'},

        },
    },

    [99] = {
        type = "service", -- public / service [ tipo da garagem ] -- 863.24,346.29,127.42
        permiss = "perm.bope", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(277.89,-348.3,53.119),
        spawnCoords = {
            vector4(287.06,-344.01,53.25,267.82),
        },
    
        vehicles = {
            {vehicle = 'hueypmerj'},

        },
    },

    
    [100] = {
        type = "service", -- public / service [ tipo da garagem ] -- -505.05,5017.32,153.55
        permiss = "perm.franca", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(863.24,346.29,127.42),
        spawnCoords = {
            vector4(857.73,338.46,127.47,137.23),
        },
    
        vehicles = {
            {vehicle = 'volatus'},

        },
    },

    [101] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.mansaodudu", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-505.05,5017.32,153.55),
        spawnCoords = {
            vector4(-503.44,5009.61,153.57,17.39),
        },
    
        vehicles = {
            {vehicle = 'volatus'},

        },
    },

    [102] = {
        type = "public", -- public / service [ tipo da garagem ] -- -464.46,-286.9,78.17
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-530.03,4989.97,153.72),
        spawnCoords = {
            vector4(-525.87,4985.53,153.91,169.06),
        },
    },
    [103] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.hospital", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-464.53,-286.87,78.17),
        spawnCoords = {
            vector4(-456.65,-290.88,78.17,244.37),
        },
    
        vehicles = {
            {vehicle = 'fenixpmerj'},

        },
    },

    [104] = {
        type = "public", -- public / service [ tipo da garagem ] -- 419.15,6537.22,27.72
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(1744.46,4965.25,46.42),
        spawnCoords = {
            vector4(1745.11,4961.21,46.03,214.6),
        },
    },

    [105] = {
        type = "public", -- public / service [ tipo da garagem ] -- -828.83,276.37,86.36
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(419.15,6537.22,27.72),
        spawnCoords = {
            vector4(424.62,6539.93,27.68,341.56),
        },
    },

    [106] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-828.83,276.37,86.36),
        spawnCoords = {
            vector4(-822.34,283.4,86.25,253.52),
        },
    },

    



    
}