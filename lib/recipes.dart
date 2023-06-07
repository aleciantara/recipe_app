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
    ),
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
    ),
  ];
}
