// hal yang wajib dipahami saat layoting

// 1 SafeArea
//   widget yang digunakan untuk memberikan batas pada hp dari
//   sisi kiri,kanan,atas,bawah, ini biasa digunakan agar dimensi
//   pada hp seperti keterangan batrai,wifi di bagian atas wifi
//   tidak terkena konten dari halaman yang kita buat

// 1.1 Scaffold : untuk buat page baru (recomended),

// 2. Container :
//    ini box yang super power anda bisa pakai box ini
//    dengan sangat dinamis, widget ini punya property yang
//    sering dipakai seperti :
//    - width,height
//    - constraint
//    - decoration (masih banyak turunannya) nama widget turunan nya adalah BoxDecoration
//    - aligment
//    - child : untuk isi content dalam container

// 3. Column
//   widget yang digunakan untuk membungkus konten secara vertical
//   property yang sering di pakai :
//   - mainaxisaligment : mengatur nilai axis column (vertical)
//   - crossaxisaligment : mengatur nilai cross column (horizontal)
//   - children : berbeda dengan child pada widget lain, children dapat
//     memasukkan konten lebih dari satu dalam satu level yang sama

// 4. Row
//   widget yang digunakan untuk membungkus konten secara horizontal
//   property yang sering di pakai :
//   - mainaxisaligment : mengatur nilai axis column (horizontal)
//   - crossaxisaligment : mengatur nilai cross column (vertical)
//   - children : berbeda dengan child pada widget lain, children dapat
//     memasukkan konten lebih dari satu dalam satu level yang sama

// 5. Stack
//   widget yang digunakan untuk menumpuk konten yang kita buat
//   property yang sering di pakai :
//   - aligment : mengatur nilai axis column (horizontal)
//   - children : berbeda dengan child pada widget lain, children dapat
//     memasukkan konten lebih dari satu dalam satu level yang sama
//     dan arah dari konten yang tidak diatur posisinya akan berada di pojok
//     kiri atas atau offset x = 0 dan offset y = 0

// 6. ListView
//   widget yang digunakan untuk membungkus konten secara vertical,
//   berbeda dengan column ListView memungkinkan konten yang anda
//   buat bisa di scroll sedangkan column tidak
//   property yang sering di pakai :
//   - padding : untung memberikan jarak konten
//   - children : berbeda dengan child pada widget lain, children dapat
//     memasukkan konten lebih dari satu dalam satu level yang sama

// 7. StateFull widget
//   widget ini merupakan suatu widget yang memiliki kelebihan untuk merubah value/nilai yang ada pada widget itu sendiri\n
//   contoh:
//   - ada suatu nilai dari widget yang memiliki value = 1 dan anda ingin menambahkan valuenya 1 setiap menekan tombol
//   - function yang digunakan untuk merubah value tersebut adalah


// 8. input widget
//   widget ini biasa digunakan untuk mediasi pengiriman data dari user untuk disimpan di tempat lain (database local,server)