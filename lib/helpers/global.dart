class ExplainText {
  static String container =
      "widget ini box yang super power anda bisa pakai box ini\ndengan sangat dinamis, widget ini punya property yang\nsering dipakai seperti :\n- width,height\n- constraint\n- decoration (masih banyak turunannya) nama widget turunan nya adalah BoxDecoration\n- aligment\n- child : untuk isi content dalam container";

  static String column =
      "widget yang digunakan untuk membungkus konten secara vertical\nproperty yang sering di pakai :\n- mainaxisaligment : mengatur nilai axis column (vertical)\n- crossaxisaligment : mengatur nilai cross column (horizontal)\n- children : berbeda dengan child pada widget lain, children dapat\n  memasukkan konten lebih dari satu dalam satu level yang sama";

  static String row =
      "widget yang digunakan untuk membungkus konten secara horizontal\nproperty yang sering di pakai :\n- mainaxisaligment : mengatur nilai axis column (horizontal)\n- crossaxisaligment : mengatur nilai cross column (vertical)\n- children : berbeda dengan child pada widget lain, children dapat\n  memasukkan konten lebih dari satu dalam satu level yang sama";

  static String stack =
      "widget yang digunakan untuk menumpuk konten yang kita buat\nproperty yang sering di pakai :\n- aligment : mengatur nilai axis column (horizontal)\n- children : berbeda dengan child pada widget lain, children dapat\n  memasukkan konten lebih dari satu dalam satu level yang sama\n  dan arah dari konten yang tidak diatur posisinya akan berada di pojok\n  kiri atas atau offset x = 0 dan offset y = 0";

  static String listview =
      "widget yang digunakan untuk membungkus konten secara vertical,\nberbeda dengan column ListView memungkinkan konten yang anda\nbuat bisa di scroll sedangkan column tidak\nproperty yang sering di pakai :\n- padding : untung memberikan jarak konten\n- children : berbeda dengan child pada widget lain, children dapat\n  memasukkan konten lebih dari satu dalam satu level yang sama";

  static String statefull =
      "widget ini merupakan suatu widget yang memiliki kelebihan untuk merubah value/nilai yang ada pada widget itu sendiri\ncontoh:\n- ada suatu nilai dari widget yang memiliki value = 1 dan anda ingin menambahkan valuenya 1 setiap menekan tombol";

  static String input =
      "input widget widget ini biasa digunakan untuk \nmediasi pengiriman data dari user untuk disimpan di tempat lain (database local,server),\ncontoh input :\n- form\n- radio button\n- checkbox";
}
