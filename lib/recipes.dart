import 'recipe.dart';

class Recipes {
  List<Recipe> recipes = [
    Recipe(
        title: 'Chocolate Chip Cookies',
        description: 'Delicious homemade cookies with chocolate chips.',
        ingredients: [
          '1 3/4 cup tepung terigu serbaguna',
          '1/2 sendok teh baking soda',
          '1/2 sendok teh garam',
          '3/4 cup mentega tawar, lelehkan',
          '3/4 cup gula pasir',
          '3/4 cup gula cokelat, cincang kasar',
          '2 sendok teh vanili ekstrak',
          '1 butir telur',
          '1 cup chocochips'
        ],
        instructions: [
          'Panaskan oven hingga suhu 180 derajat Celsius. Siapkan loyang cookie dan alasi dengan kertas roti.',
          'Dalam mangkuk, campur tepung terigu, baking soda, dan garam. Aduk rata dan sisihkan.',
          'Dalam mangkuk lain, campur mentega leleh, gula pasir, dan gula cokelat. Kocok dengan mixer hingga rata dan lembut.',
          'Tambahkan telur dan vanili ekstrak ke dalam adonan mentega. Kocok kembali hingga tercampur dengan baik.',
          'Masukkan campuran tepung sedikit demi sedikit ke dalam adonan mentega. Aduk hingga semua bahan tercampur rata dan membentuk adonan cookie yang kental.',
          'Tambahkan chocochips ke dalam adonan dan aduk rata hingga chocochips terdistribusi dengan merata dalam adonan.',
          'Ambil sekitar satu sendok makan adonan dan bentuk menjadi bulatan. Letakkan di atas loyang yang telah dialasi kertas roti. Ulangi langkah ini hingga adonan habis',
          'Panggang cookies dalam oven yang telah dipanaskan selama sekitar 10-12 menit atau hingga pinggiran cookies berwarna keemasan. ',
          'Setelah matang, keluarkan cookies dari oven dan biarkan dingin selama beberapa menit di atas loyang. Setelah itu, pindahkan cookies ke rak kawat dan biarkan dingin sepenuhnya sebelum disajikan.'
        ],
        image:
            'https://joyfoodsunshine.com/wp-content/uploads/2018/02/best-chocolate-chip-cookies-recipe-1.jpg',
        isFavorite: false),
    Recipe(
        title: 'Tumis Buncis Udang',
        description: 'Makanan rumahan mudah dibuat dan enak',
        ingredients: [
          '100 gr udang loreng, kupas dan bersihkan',
          '100 gr baby buncis, iris serong',
          'Garam',
          'Gula',
          'Penyedap rasa',
          '1 buah cabai merah besar, iris serong',
          '1 buah cabai hijau besar, iris serong',
          'Cabai rawit',
          'Cabai keriting sesuai selera',
          '2 siung bawang putih',
          '4 butir bawang merah'
        ],
        instructions: [
          'Tumis bumbu halus, beri air sedikit dan masak sampai harum.',
          'Masukkan buncis dan irisan cabai hijau, lalu tambahkan gula, garam, dan penyedap, aduk rata.',
          'Terakhir masukkan udang, masak sampai udang berubah warna dan matang. Angkat dan sajikan.'
        ],
        image:
            'https://scm-assets.constant.co/scm/unilever/1db348501df1238f872479d225e08c34/bb7b842c-a7b6-458a-ac0a-d124bc43320e.jpg',
        isFavorite: false),
    Recipe(
        title: 'Ayam Kriuk Cabai Garam',
        description:
            'Makanan kesukaan orang-orang yang doyan ayam dan juga cabe',
        ingredients: [
          '350 gr dada ayam fillet',
          '1 butir putih telur',
          '2 sdm tepung maizena',
          '1 sdm fibercreme',
          '3 siung bawang putih, parut',
          '1/2 sdt lada bubuk',
          '1/2 sdt penyedap jamur',
          '4 sdm maizena',
          '2 sdm tepung serbaguna',
          '4 siung bawang putih, cincang',
          '8 cabai rawit, iris bulat',
          '2 batang daun bawang, iris-iris',
          'Garam',
          'Gula',
        ],
        instructions: [
          'Potong dadu dada ayam, lalu marinasi dengan bumbu sampai meresap. Kemudian simpan ayam yang telah dimarinasi dalam kulkas selama dua jam.',
          'Campur tepung maizena dengan fibercreme, kemudian balurkan ke potongan ayam.',
          'Kocok putih telur, kemudian tuangkan ke dalam potongan ayam yang telah diberi tepung. Campurkan hingga merata.',
          'Campurkan maizena dan tepung serbaguna dalam wadah, balurkan ayam sebelumnya hingga merata.',
          'Goreng ayam hingga warnanya keemasan, setelah itu angkat dan tiriskan',
          'Tumis bahan tabur dengan sedikit minyak sampai harum, lalu bumbui dengan garam dan gula. Campurkan hingga merata.',
          'Campurkan potongan ayam dengan bahan tabur hingga merata. Chicken kriuk cabai garam siap disajikan.'
        ],
        image:
            'https://cdn-brilio-net.akamaized.net/webp/news/2021/07/09/209406/1846247-25-resep-masakan-rumahan-sederhana.jpg',
        isFavorite: false),
    Recipe(
        title: 'Tongseng Sapi Tanpa Santan',
        description: 'Makanan yang kadang disajikan waktu Rahmadhan',
        ingredients: [
          '1/4 kg daging sapi, iris tipis',
          'Kol secukupnya',
          '1 buah tomat',
          '10 cabai rawit',
          'Daun bawang secukupnya',
          '1 lembar daun salam',
          '1 batang serai',
          '2 sdm kecap manis',
          '2 sdm minyak sayur',
          '500 ml air matang',
          '1/2 sdt kaldu bubuk sapi',
          '3 siung bawang putih',
          '1/4 sdt merica',
          '1 cm jahe',
          '2 butir kemiri',
        ],
        instructions: [
          'Tumis bumbu yang telah dihaluskan, tambahkan daun salam dan serai, aduk hingga wangi.',
          'Lalu masukkan daging sapi yang telah diiris tipis hingga berwarna kecokelatan, kemudian masukkan air dan tutup wajan supaya dagingnya empuk.',
          'Setelah daging empuk lalu beri kaldu sapi dan kecap manis aduk rata.',
          'Campurkan maizena dan tepung serbaguna dalam wadah, balurkan ayam sebelumnya hingga merata.',
          'Masukkan kol, cabai rawit, dan tomat. Aduk rata lalu angkat.',
          'Sajikan dengan taburan daun bawang di atasnya.',
        ],
        image:
            'https://cdn-brilio-net.akamaized.net/webp/real/2023/03/19/1983120/1000xauto-30-resep-masakan-menu-harian-ramadhan-paling-simpel.jpg',
        isFavorite: false),
    Recipe(
        title: 'Brownies Kukus',
        description: 'Resep brownies kukus yang lezat dan lembut.',
        ingredients: [
          '200 gram dark chocolate, potong kecil-kecil',
          '150 gram mentega',
          '200 gram gula pasir',
          '4 butir telur',
          '150 gram tepung terigu',
          '50 gram cokelat bubuk',
          '1/2 sendok teh baking powder',
          '1/4 sendok teh garam',
          '100 gram kacang almond, cincang kasar (opsional)'
        ],
        instructions: [
          'Siapkan loyang persegi berukuran 20x20 cm, olesi dengan mentega, dan alasi dengan kertas roti.',
          'Lelehkan dark chocolate dan mentega dalam mangkuk di atas panci berisi air mendidih (metode double boiler), aduk hingga tercampur rata dan leleh. Dinginkan.',
          'Dalam mangkuk terpisah, kocok telur dan gula pasir hingga mengembang dan berwarna lebih terang.',
          'Tambahkan campuran dark chocolate dan mentega yang telah dingin ke dalam adonan telur dan gula pasir. Aduk rata.',
          'Ayak tepung terigu, cokelat bubuk, baking powder, dan garam ke dalam adonan cokelat. Aduk rata hingga tidak ada gumpalan tepung.',
          'Tambahkan kacang almond cincang (jika menggunakan) dan aduk hingga merata.',
          'Tuang adonan ke dalam loyang yang telah disiapkan.',
          'Panaskan panci pengukus dengan air di bawahnya. Kukus brownies selama sekitar 45-50 menit atau hingga matang. Tes tusuk dengan lidi, jika tidak ada adonan yang menempel berarti brownies sudah matang.',
          'Angkat brownies dari panci pengukus dan biarkan dingin sebelum dipotong dan disajikan.'
        ],
        image:
            'https://www.astronauts.id/blog/wp-content/uploads/2023/01/Resep-Brownies-Panggang-dan-Tips-Membuatnya.jpg',
        isFavorite: false),
    Recipe(
        title: 'Mie Goreng Spesial',
        description: 'Resep mie goreng yang lezat dan spesial.',
        ingredients: [
          '2 bungkus mie instan',
          '1 buah wortel, potong dadu kecil',
          '1 batang daun bawang, iris tipis',
          '1/2 buah bawang bombay, iris tipis',
          '3 siung bawang putih, cincang halus',
          '2 buah cabai merah, iris serong',
          '2 butir telur',
          '3 sendok makan kecap manis',
          '1 sendok makan saus tiram',
          '1 sendok teh garam',
          '1/2 sendok teh merica',
          'Minyak goreng secukupnya'
        ],
        instructions: [
          'Rebus mie instan hingga matang, tiriskan, dan sisihkan.',
          'Panaskan minyak dalam wajan atau penggorengan.',
          'Masukkan bawang putih, cabai merah, dan bawang bombay. Tumis hingga harum dan bawang bombay menjadi layu.',
          'Tambahkan wortel dan daun bawang, aduk rata dan masak hingga wortel sedikit lunak.',
          'Pindahkan tumisan sayuran ke pinggir wajan atau penggorengan.',
          'Kocok telur dalam mangkuk terpisah, lalu tuangkan ke tengah wajan atau penggorengan.',
          'Goreng telur hingga setengah matang, lalu aduk rata dengan tumisan sayuran.',
          'Tambahkan mie instan, kecap manis, saus tiram, garam, dan merica. Aduk rata hingga bumbu tercampur merata dan mie terasa hangat.',
          'Angkat dan sajikan mie goreng spesial ini selagi masih hangat.'
        ],
        image:
            'https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/ayosemarang/images/post/articles/2020/05/01/56297/mie-goreng.jpg',
        isFavorite: false),
    Recipe(
        title: 'Ayam Geprek',
        description: 'Ayam goreng yang digeprek dengan sambal pedas.',
        ingredients: [
          '4 potong dada ayam, fillet',
          'Garam secukupnya',
          'Merica secukupnya',
          'Tepung serbaguna secukupnya',
          'Minyak untuk menggoreng',
          '5 buah cabai rawit merah',
          '3 siung bawang putih',
          'Gula secukupnya',
          'Air jeruk nipis secukupnya',
          'Garam secukupnya',
          'Minyak goreng secukupnya'
        ],
        instructions: [
          'Bersihkan potongan dada ayam, kemudian lumuri dengan garam dan merica.',
          'Balurkan potongan ayam dengan tepung serbaguna hingga merata.',
          'Panaskan minyak dalam wajan atau penggorengan.',
          'Goreng ayam hingga matang dan berwarna kecokelatan. Angkat dan tiriskan.',
          'Haluskan cabai rawit, bawang putih, gula, dan sedikit garam dengan menggunakan ulekan atau blender.',
          'Panaskan minyak dalam wajan, lalu tumis bumbu halus hingga harum.',
          'Tambahkan air jeruk nipis dan aduk rata.',
          'Letakkan potongan ayam goreng ke dalam wajan dengan bumbu sambal, kemudian geprek ayam dengan menggunakan ulekan atau alat geprek lainnya hingga daging ayam terasa lunak.',
          'Angkat ayam geprek dan sajikan dengan nasi hangat atau lalapan sesuai selera.'
        ],
        image:
            'https://asset.kompas.com/crops/VBs6hy5_8TPQwbLfAZRqZ3MwVN4=/556x0:5524x3312/750x500/data/photo/2022/07/18/62d4e8c69cef4.jpg',
        isFavorite: false),
  ];

  int get recipeCount => recipes.length;
}
