'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"assets/fonts/MaterialIcons-Regular.otf": "bc4de9b6940b4aa86eeeff4e33618ecd",
"assets/AssetManifest.bin.json": "d0280104b2311dcf63b9051b34cdd80d",
"assets/AssetManifest.bin": "8b02eb3882d8e09c5c37a88f349b94ab",
"assets/AssetManifest.json": "cb9c2344b149a075ac2399780440a2c5",
"assets/assets/fonts/calibri/calibri-bold.ttf": "8879a4caa29c42ce616cd5f172299366",
"assets/assets/fonts/calibri/calibri-regular.ttf": "baf2d27a2cc7aea124138fb8b4fb5b4d",
"assets/assets/images/calidad_vida/consulta%2520medica2.jpeg": "96d7c75a3c1f48821908b96bbb88e742",
"assets/assets/images/calidad_vida/img.png": "d2596dd3f097e83c710f754b1f65ab12",
"assets/assets/images/calidad_vida/causando_cuerpo/img_1.png": "0033bd6127cc4bdafffa318630ca5463",
"assets/assets/images/calidad_vida/causando_cuerpo/img.png": "d0df1a868150e34d7629bd08606220be",
"assets/assets/images/calidad_vida/causando_cuerpo/img_2.png": "d786a9c1c96ddf76c49cbbc41649b880",
"assets/assets/images/calidad_vida/causando_cuerpo/img_3.png": "1be6f1e6852344b2e436014e059bc9f4",
"assets/assets/images/calidad_vida/causando_cuerpo/img_4.png": "3948fb1ecdf4bd67394f4f4fe4850aa3",
"assets/assets/images/calidad_vida/consejeria/img_1.png": "606e790e2cb270f57de0a64ea60abaa9",
"assets/assets/images/calidad_vida/consejeria/img.png": "e810372e6c560bbd76b63dd53ddce084",
"assets/assets/images/calidad_vida/consulta%2520medica3.jpeg": "a9de61b27376fac4e8c0786ac2b45861",
"assets/assets/images/calidad_vida/emociones/img_1.png": "4970f790ae5a67bbb22399accd0ec4b3",
"assets/assets/images/calidad_vida/emociones/img.png": "4c7a8505e8007af3d8e1132148a03a67",
"assets/assets/images/calidad_vida/emociones/img_5.png": "54143afd05e7df64621d8e84cad2db69",
"assets/assets/images/calidad_vida/emociones/img_2.png": "ac46f4b2c2dab6e9c25a32192368589e",
"assets/assets/images/calidad_vida/emociones/img_3.png": "5a1f090492d5c1b54fb76eef0adaf6f7",
"assets/assets/images/calidad_vida/emociones/img_4.png": "62de2f0dd12cd0dad1037559f635f1f2",
"assets/assets/images/calidad_vida/belleza/img_1.png": "5ca4586ad0dddd29d5e823bcc69034a9",
"assets/assets/images/calidad_vida/belleza/img.png": "5042f59001d1ef8c8c2b89fac8186929",
"assets/assets/images/calidad_vida/belleza/img_2.png": "7380dcd4867f15670398223f94789f48",
"assets/assets/images/calidad_vida/belleza/img_3.png": "e6bcd863bd87e2d2d82b7698673112ec",
"assets/assets/images/calidad_vida/vestir/img_1.png": "92773c751e492039e011ec707a347514",
"assets/assets/images/calidad_vida/vestir/img.png": "c0b5a34783168ec472d8c2b0c40956d5",
"assets/assets/images/calidad_vida/vestir/img_2.png": "52da8666f18c37235878eab5b1344400",
"assets/assets/images/calidad_vida/clima/img_1.png": "d41874d96e53e0d51f849f1084b9b1c5",
"assets/assets/images/calidad_vida/clima/img.png": "b51f62663d5785bc0082ae8b767bc736",
"assets/assets/images/calidad_vida/clima/img_5.png": "ced7b241f282211e028fbc0dc4796cdc",
"assets/assets/images/calidad_vida/clima/img_2.png": "c92df109d4dc085e3684e8ac20300127",
"assets/assets/images/calidad_vida/clima/img_3.png": "8732ca1e59e2297c71432d71fe05c2ad",
"assets/assets/images/calidad_vida/clima/img_4.png": "c64c82860c4657b959c3a4ac177fd02f",
"assets/assets/images/calidad_vida/prenatales/img_1.png": "2ae55647201f5c0ca288e2dd3eef44d4",
"assets/assets/images/calidad_vida/prenatales/img.png": "53e8db9be0608be91bad110dfdea4197",
"assets/assets/images/calidad_vida/prenatales/img_5.png": "b8bf9496ee398ddbfd2003ea72229b03",
"assets/assets/images/calidad_vida/prenatales/img_2.png": "a8287d72e8417c36e750f71ff2f17f8b",
"assets/assets/images/calidad_vida/prenatales/img_3.png": "7155c8c2b9821dcd31333b27797ae540",
"assets/assets/images/calidad_vida/prenatales/img_4.png": "b40165d366f706ed10d20b85767e3a9c",
"assets/assets/images/calidad_vida/beneficios/img_6.png": "3a628351ac3b1e022f668aa4a128ad45",
"assets/assets/images/calidad_vida/beneficios/img_1.png": "61f0811821d8bee2170fa0c51efd0fa4",
"assets/assets/images/calidad_vida/beneficios/img.png": "017d4349475a1310626b313020ba035b",
"assets/assets/images/calidad_vida/beneficios/img_8.png": "76f356732966e5a11af6d5622072af8b",
"assets/assets/images/calidad_vida/beneficios/img_5.png": "61a22a6325e185aaec9211a064cb1498",
"assets/assets/images/calidad_vida/beneficios/img_7.png": "2998d5f3e518d5946f3224f77e3ac522",
"assets/assets/images/calidad_vida/beneficios/img_2.png": "05fdc8f67f9bd10f9558bf4bf5f16a7c",
"assets/assets/images/calidad_vida/beneficios/img_3.png": "4c4d545de8eeb38cd5a0a12185ccc778",
"assets/assets/images/calidad_vida/beneficios/img_9.png": "3bab3eb4fb4b327fd549a8c94f6a921b",
"assets/assets/images/calidad_vida/beneficios/img_4.png": "9d43e702033eab8bcc5acd51c6b69564",
"assets/assets/images/calidad_vida/fetos/img_6.png": "1ab72af1cfeb6dff3e0fc55c2cdec4c0",
"assets/assets/images/calidad_vida/fetos/img_1.png": "f7150c26dc3d62d38b5a14581148f739",
"assets/assets/images/calidad_vida/fetos/img.png": "45131864415dc25ad9eecfc7ece85dea",
"assets/assets/images/calidad_vida/fetos/img_8.png": "9023183285455e36a49dd66912845608",
"assets/assets/images/calidad_vida/fetos/img_5.png": "8153ca53bab35cb21f3d0664bc73ae01",
"assets/assets/images/calidad_vida/fetos/img_7.png": "3a563ecc603eb2e8f25d54e019fae9a0",
"assets/assets/images/calidad_vida/fetos/img_2.png": "bec6c4f15b9d57b4d914f9fe4da9871d",
"assets/assets/images/calidad_vida/fetos/img_3.png": "5513c4fde375b9b0a18d2fb4ebc46740",
"assets/assets/images/calidad_vida/fetos/img_4.png": "5b79414a24a0199c808afc069f9d3eed",
"assets/assets/images/calidad_vida/control/img_6.png": "69167c2733f1e9631fe8a965b3afe7d0",
"assets/assets/images/calidad_vida/control/img_1.png": "b633548ccad03cb541fc6aec57788a58",
"assets/assets/images/calidad_vida/control/img.png": "e82798a809c9e7ca534dabc89a4030ee",
"assets/assets/images/calidad_vida/control/img_8.png": "0428849fefd9ca5d89d31d022bf3f1cb",
"assets/assets/images/calidad_vida/control/img_14.png": "928c134391a147d1c5420933c0926b71",
"assets/assets/images/calidad_vida/control/img_5.png": "dfda8eb811612b3709f797c1a70ccf4e",
"assets/assets/images/calidad_vida/control/img_15.png": "fd597be50ab22ecddb73937443d979f9",
"assets/assets/images/calidad_vida/control/img_13.png": "dd4cba0c10e494ccc0322532255a3eae",
"assets/assets/images/calidad_vida/control/img_12.png": "9f5a09718ac14c461beae36aa4cb7783",
"assets/assets/images/calidad_vida/control/img_7.png": "8393decefcc15bbcf749ad703826f1bf",
"assets/assets/images/calidad_vida/control/img_2.png": "532073ddf7e438642db65e0f76f77926",
"assets/assets/images/calidad_vida/control/img_3.png": "2a6aedcba225152a0d023597917302a5",
"assets/assets/images/calidad_vida/control/img_9.png": "3ff0d7d82deabfe8acd4a6e99b1b6e7d",
"assets/assets/images/calidad_vida/control/img_4.png": "e746abbe338f18a8a1062e206ecfe1f7",
"assets/assets/images/calidad_vida/control/img_11.png": "3a44dfd512649ae3f37e559752dbe6fe",
"assets/assets/images/calidad_vida/control/img_10.png": "63f402e815e8df97f8cf1026b63e92a7",
"assets/assets/images/calidad_vida/salud.jpeg": "f388fb52494c25a108968ec02a3f2158",
"assets/assets/images/calidad_vida/consulta%2520medica.jpeg": "068bd6abcae0191e4a47aeba92ba6854",
"assets/assets/images/psicoprofilaxis/psico2.jpeg": "0f61f57638b2a1b1433b12c7081d6c3e",
"assets/assets/images/psicoprofilaxis/psico3.jpeg": "420d5980273f3011e532caaf3a65b3c4",
"assets/assets/images/psicoprofilaxis/Psico%25201.jpg": "0114f65ca5e4106907bab87d7578e8b2",
"assets/assets/images/psicoprofilaxis/psico.jpeg": "1ff27f90034fa3217d499db95b7785d1",
"assets/assets/images/psicoprofilaxis/tactil.jpeg": "500774ac8d1cd7740424e8243b0682d0",
"assets/assets/images/psicoprofilaxis/auditiva.jpeg": "db8198586377eac7d4c0eee3295e99b1",
"assets/assets/images/psicoprofilaxis/motora.jpeg": "3513755f958ed636617602be1c7f5c2e",
"assets/assets/images/psicoprofilaxis/Psico%2520auditiva.jpg": "e9ee39a2bbeb1252ee290d7461895d96",
"assets/assets/images/psicoprofilaxis/Psico%2520tactil.jpg": "8ed1f36c21b7642ef6784bc9ffc1cc20",
"assets/assets/images/psicoprofilaxis/tactil2.jpeg": "5582c652b3c3e3b779fbdeadc745321d",
"assets/assets/images/psicoprofilaxis/auditiva4.jpeg": "86e3e10b77ba121df4e55f67b0f897f2",
"assets/assets/images/psicoprofilaxis/Psico%2520motora.jpg": "56a5257e97fdaa697a7084f4fd1eba89",
"assets/assets/images/psicoprofilaxis/estimulacion%2520visual2.jpeg": "8d0a61ee2bc7e43b55503811bcda53ca",
"assets/assets/images/psicoprofilaxis/estimulacion%2520visual.jpeg": "cc4ff1ff4301ff4b04f6e3788f3d6fad",
"assets/assets/images/psicoprofilaxis/auditiva2.jpeg": "b688e0c2331eb00499a6c0c2c08270d8",
"assets/assets/images/psicoprofilaxis/tactil3.jpeg": "d14a6881281a7514bc46bf138fd844ab",
"assets/assets/images/psicoprofilaxis/motora2.jpeg": "31a924febaa4be6e3523ebe599b36dbb",
"assets/assets/images/ninios.jpeg": "07785f0203915178e8391670378b6491",
"assets/assets/images/proyecto_de_vida/habilidades.jpeg": "a7a3501e20cb4043eed18b217113800e",
"assets/assets/images/proyecto_de_vida/Vida.jpeg": "8d740f2778e2e6c28bca56635094e3b8",
"assets/assets/images/proyecto_de_vida/calidadVida2.jpg": "611ef707eaa0780dd86f169b7627398a",
"assets/assets/images/proyecto_de_vida/motivacion.jpeg": "977e4072596c0659fea15052533e808d",
"assets/assets/images/proyecto_de_vida/5.jpeg": "274f7bdb76158b802720854091474625",
"assets/assets/images/proyecto_de_vida/2.jpeg": "1f2b0c75183d7bc3b7fa41d2096772d7",
"assets/assets/images/proyecto_de_vida/1.jpeg": "d641e6bdd8a51a890af2f4cafb9f3087",
"assets/assets/images/proyecto_de_vida/obstaculos.jpeg": "ceade944b7887de2a68262596f5f0e12",
"assets/assets/images/proyecto_de_vida/calidad%2520de%2520vida%25203.jpg": "ab041355ff3b22b48a606e653488a61f",
"assets/assets/images/proyecto_de_vida/7.jpeg": "fed3fe105ae2190491e0a0d196221ed6",
"assets/assets/images/proyecto_de_vida/6.jpeg": "e4ec54276f9498050717fb4226e156b5",
"assets/assets/images/proyecto_de_vida/3.jpeg": "ba945325407472e464215c7cef44c867",
"assets/assets/images/proyecto_de_vida/decisiones.jpeg": "fd6dea04e1fe25d40e1214081d873ccc",
"assets/assets/images/proyecto_de_vida/8.jpeg": "4e0d072cedc79fba59114b031c8babfd",
"assets/assets/images/proyecto_de_vida/Calidad%2520de%2520vida.jpg": "bd0dac8292a1a9c01b4cca8e4722e4b3",
"assets/assets/images/proyecto_de_vida/9.jpeg": "fda40465fa54a0d7c9228a7585f9d729",
"assets/assets/images/proyecto_de_vida/4.jpeg": "144c2174c04096b3ef0e4510528dd9b9",
"assets/assets/images/1er%2520tirmestre.jpeg": "0dbda7a829974357954d85bf92547391",
"assets/assets/images/inicio/grupo.jpeg": "d1a6c1417662406e5841d5d0073b5c05",
"assets/assets/images/inicio/inicio_sesion.jpg": "7f79f7e85d0a3b000a37b12270ff8946",
"assets/assets/images/inicio/grupo2.jpeg": "bf2368f9f1c0b7a70fd20a2692d6978d",
"assets/assets/images/dieta/Picture4.jpg": "a1c4c5fce1dc529a6b708e7b453dce56",
"assets/assets/images/dieta/dieta%25203.jpg": "ebdd7fd4ab30bd74bedb340e31f673ce",
"assets/assets/images/dieta/hierro.jpeg": "2127b7901bfc92e11f7329ac9ceb096b",
"assets/assets/images/dieta/Picture3.jpg": "8ab6430764daac977a376588c8726fe5",
"assets/assets/images/dieta/dieta%25202.jpg": "19163468e9542ecb2139a471a8389cc4",
"assets/assets/images/dieta/carne%2520sin%2520cocinar.jpg": "f2b020236112079321c20a06ad478735",
"assets/assets/images/dieta/yodo.jpeg": "211de22da8cca48bc545de5c0856f6cf",
"assets/assets/images/dieta/cafe.jpeg": "c1d113e8804be9e8abcf295a8ac9440f",
"assets/assets/images/dieta/5.jpeg": "76c9c01ecea88365699b2b0cc3591f5f",
"assets/assets/images/dieta/2.jpeg": "20e377068d0ce42359787dad5df82ff6",
"assets/assets/images/dieta/Picture1.jpg": "d76607a0bdd78fadf734469d735a23ee",
"assets/assets/images/dieta/Picture7.png": "398335d68764d953374f839cd55d8f3d",
"assets/assets/images/dieta/1.jpeg": "e0580242638a048226941125657de881",
"assets/assets/images/dieta/pescado%2520y%2520marisco%2520crudo.jpg": "34d1ddd524355ebf72028a161745bdca",
"assets/assets/images/dieta/cerveza.jpeg": "b8077978fe973f26b2f23108959376a8",
"assets/assets/images/dieta/7.jpeg": "1409e787cb1006a24868ff8a4985ff18",
"assets/assets/images/dieta/6.jpeg": "b57ba415f4724f3b4eeb88242ad9a0bb",
"assets/assets/images/dieta/dieta%25201.jpg": "c19fa1a70ad80af40b24315cfa82becd",
"assets/assets/images/dieta/3.jpeg": "5f1bacaeaa0b8e15b56b684f6946340d",
"assets/assets/images/dieta/dieta.jpeg": "cd26bff2ebbf3900f93bdafa58186f73",
"assets/assets/images/dieta/Picture8.png": "e000e419011dc6b201c36e48799e79aa",
"assets/assets/images/dieta/10.jpeg": "b0c2568eff991bbfa5db15d102109170",
"assets/assets/images/dieta/Picture2.jpg": "22b1e45d3de54df1d511a6f24e214555",
"assets/assets/images/dieta/Picture9.png": "4714756a6dcbfd31badcfb23c2113298",
"assets/assets/images/dieta/Picture5.png": "b427e36bc2d9b5d1d1242d4373924fa1",
"assets/assets/images/dieta/Picture6.png": "7c1468b610125f6ff90c65877a26b2f6",
"assets/assets/images/dieta/Dieta3.jpeg": "6b0366c96f506a215ab3ae3f7953f860",
"assets/assets/images/dieta/8.jpeg": "ed959ecaa5874a31e47ae578fb2b116b",
"assets/assets/images/dieta/agua.jpeg": "1bcf4cfc1e2f6206417eb11235c2766b",
"assets/assets/images/dieta/dieta2.jpeg": "a6393eb93d6fd7ba9058affe224be57e",
"assets/assets/images/dieta/9.jpeg": "2b95fa11bdd67f29d0a643c739b69e70",
"assets/assets/images/dieta/4.jpeg": "6e9438aca753efdda5086e6d4da1a862",
"assets/assets/images/dieta/embutidos%2520.jpg": "7f149d0ab67948f6cbf987e0fc26e255",
"assets/assets/images/splash/img.png": "e56d441c63ab29d9fa7884cccee731c6",
"assets/assets/images/splash/splash.jpeg": "aff359e005468962cb280e60e3c52808",
"assets/assets/images/actividad_fisica/correrVarios.jpeg": "37a661093a94fe0ff2059f0eed68152e",
"assets/assets/images/actividad_fisica/tercer_trimestre/img_1.png": "4c01a38082c9b06b8bdd81290271e99e",
"assets/assets/images/actividad_fisica/tercer_trimestre/img.png": "63f886d3133e912a7a59179ed43fd3a2",
"assets/assets/images/actividad_fisica/estiramiento1.jpeg": "2efb9e3014145f02e46c8a52fbd51e68",
"assets/assets/images/actividad_fisica/estiramiento.jpeg": "183517c6e2e4b8f66eec8fc8b92e0042",
"assets/assets/images/actividad_fisica/estirar.jpeg": "2797629e44207666baa816a42fee224c",
"assets/assets/images/actividad_fisica/estirar2.jpeg": "f6325f7d63184de2701e8925fae668c4",
"assets/assets/images/actividad_fisica/primer_trimestre/img_1.png": "24ca4c228dbf7c3ce5769205968d3c50",
"assets/assets/images/actividad_fisica/primer_trimestre/img.png": "935d78a5228fb32e414fa57cd8422e3b",
"assets/assets/images/actividad_fisica/correr%2520varios'.jpeg": "f5a1e31a59879760b64ec852735c9b53",
"assets/assets/images/actividad_fisica/actividad%25201.jpg": "e37c3ffce6e3ba08902c083eb29931da",
"assets/assets/images/actividad_fisica/ejercicios.jpeg": "62912dba9ceb20410daed5987e776963",
"assets/assets/images/actividad_fisica/caminataAireLibre.jpeg": "1d79c6c93a8a537479bbd8a9ca6c3b41",
"assets/assets/images/actividad_fisica/ejercicios3.jpeg": "39fb3d939e05c48cbafd274a397c2777",
"assets/assets/images/actividad_fisica/actividad%25206.jpg": "12bf01378eec62a337591c09d6baaeff",
"assets/assets/images/actividad_fisica/caminata2.jpeg": "f1118d3985c181b280462b21b9c4f82b",
"assets/assets/images/actividad_fisica/tercer.jpeg": "bbe7ec8953aca83b2402156dc57a74fc",
"assets/assets/images/actividad_fisica/ejercicio1.jpeg": "00ca36d5062db1b4c3e7f56e2d9b3872",
"assets/assets/images/actividad_fisica/ejercicio3.jpeg": "6f218f103056dcf4e42e25aaea40d280",
"assets/assets/images/actividad_fisica/descanso.jpeg": "e5962404f483474cf93f8736b545feaf",
"assets/assets/images/actividad_fisica/segundo_trimestre/img_1.png": "f16fe2931a173d902fec24ee021764e0",
"assets/assets/images/actividad_fisica/segundo_trimestre/img.png": "fc13b61f154506b2d218c6f46224d2b9",
"assets/assets/images/actividad_fisica/estiramiento2.jpeg": "cfd675523bc9068c7a08bc4e082c0166",
"assets/assets/images/actividad_fisica/primer.jpeg": "2a644c68144f66b5ba8eabce99527086",
"assets/assets/images/actividad_fisica/natacion.jpeg": "c5fbb0dbf462f82e36aa693b3eb82815",
"assets/assets/images/actividad_fisica/segun.jpeg": "9256df286c2d9b7c4b6654176a941fcf",
"assets/assets/images/actividad_fisica/actividad%25205.jpg": "a491298737e1030cc93fefcbcd0c75cf",
"assets/assets/images/actividad_fisica/actividad%25202.jpeg": "d474a6b30cdc37065b56e5cb030a8556",
"assets/assets/images/actividad_fisica/actividad%25204.jpg": "0c2a2b56ecbb3d922e51ffa49a89620b",
"assets/assets/images/actividad_fisica/actividad%25203.jpg": "c5b58b162f3c764a4d6baf51096aaa5f",
"assets/assets/images/actividad_fisica/ejercicio2.jpeg": "0eae36d5f1eddabbd4e0c7d263619917",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/FontManifest.json": "b52873650819a59baf5a62c881c484a5",
"assets/NOTICES": "9328c15508f62139dac14ea2d2742f54",
"main.dart.js": "3f35783779d045d00a2fae8a77129bae",
"manifest.json": "536bcd88df372b053061559321cf8a4a",
"version.json": "66cf62bc83b353eddfc51568ad9d788c",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"flutter_bootstrap.js": "5834dfda8d997ccf0b787da50d77ba59",
"splash/img/light-3x.png": "d2ccc55ab6ff93b4071b6e92d16bcd70",
"splash/img/dark-4x.png": "6d1162e83021104f63123648ffd8e287",
"splash/img/light-1x.png": "63d3f732a6666850cd5935eeaa4793db",
"splash/img/dark-1x.png": "63d3f732a6666850cd5935eeaa4793db",
"splash/img/light-2x.png": "126411514411bff2e098094610e5546c",
"splash/img/dark-2x.png": "126411514411bff2e098094610e5546c",
"splash/img/dark-3x.png": "d2ccc55ab6ff93b4071b6e92d16bcd70",
"splash/img/light-4x.png": "6d1162e83021104f63123648ffd8e287",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"index.html": "adf384c1286a9bccc1d0ab497bfa20be",
"/": "adf384c1286a9bccc1d0ab497bfa20be",
"flutter.js": "f393d3c16b631f36852323de8e583132"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
