import 'package:get/get.dart';
import '../models/makanan_model.dart';

class ListMakananController extends GetxController {
  List<MakananModel> dataMakanan = [
    MakananModel(
      namaMakanan: "Bubur Ayam",
      harga: "12.000",
      rating: "4.8 / 5.0",
      ulasan: "Buburnya gurih, suwiran ayamnya banyak, dan kerupuknya renyah!",
      deskripsi: "Bubur ayam sendiri awalnya Konsepnya bubur nasi sudah ada sejak ribuan tahun lalu di Tiongkok yang kemudian dibawa ke Nusantara oleh para imigran Tionghoa, lalu di Indonesia, resep congee tersebut mengalami akulturasi dengan cita rasa lokal. Hidangan ini dilengkapi dengan berbagai topping khas Indonesia seperti suwiran ayam, kecap asin atau manis, daun bawang, bawang goreng, seledri, cakwe, kerupuk, hingga kacang goreng.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmg2ioMZ0BQUlHyYFhN9FaTh_xcxC7m8kC5_QVKWcZUA&s=10"
    ),
    MakananModel(
      namaMakanan: "Gultik",
      harga: "13.000",
      rating: "4.7 / 5.0",
      ulasan: "Porsinya pas untuk malam hari, kuah gulenya mantap.",
      deskripsi: "Gultik adalah kuliner kaki lima yang sangat populer dan khas dari Jakarta, tepatnya di kawasan Blok M, Jakarta Selatan, dan kepanjangan Gultik sendiri adalah singkatan dari Gulai Tikungan, bisa dinamakan tikungan karena para pedagangnya berjualan di sekitar tikungan jalan, yaitu di persimpangan Jalan Mahakam dan Bulungan Blok M, Meskipun melekat sebagai kuliner ikonik Jakarta, sebagian besar pedagang yang merintis dan menjual gultik sejak tahun 1980-an berasal dari daerah Sukoharjo, Solo, Jawa Tengah,  Hidangan ini berupa porsi nasi kecil yang disiram kuah gulai sapi yang gurih, berisi potongan daging, tetelan, dan jeroan, serta dinikmati dengan tambahan kecap dan sambal.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKVMiHgXSwyFlp4nsNG9ZxZFo-qgpDD0RV820EJFMgLA&s=10"
    ),
    MakananModel(
      namaMakanan: "Lentog Tanjung",
      harga: "10.000",
      rating: "4.9 / 5.0",
      ulasan: "Kuliner khas Kudus yang rasanya sangat autentik dan enak.",
      deskripsi: "Makanan khas Kudus, Jawa Tengah (khususnya dari Desa Tanjungkarang/Tanjung), Makanan dengan khas sarapan berupa lontong yang diiris halus, disajikan bersama lodeh tahu-tempe dan sayur nangka muda (tori/gori) bersantan gurih encer. Lentog Tanjung umumnya ditaburi bawang goreng dan dinikmati bersama sate telur puyuh atau kerupuk..",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbnMSwMlJ6Fyt7N-F4VJA0pZfhN3szgPjwyqihN1yCsg&s=10"
    ),
    MakananModel(
      namaMakanan: "Mie Ayam",
      harga: "11.000",
      rating: "4.6 / 5.0",
      ulasan: "Mienya kenyal dan bumbu ayamnya meresap sempurna.",
      deskripsi: "Mie ayam adalah makanan yang asalnya dari Tiongkok (dikembangkan dan dimodifikasi secara luas di Jawa/Indonesia), Hidangan mi gandum yang direbus hingga kenyal, dibumbui dengan minyak rempah, lalu diberi topping tumisan daging ayam cincang/dadu bersaus manis-gurih. Biasanya disajikan dengan daun sawi, daun bawang, pangsit (goreng/rebus), serta kuah kaldu terpisah.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSihr4g08AJTj1Pq5zKhZBmB5KWcvDI5um2og-9O0ErA&s"
    ),
    MakananModel(
      namaMakanan: "Nasi Goreng",
      harga: "13.000",
      rating: "4.8 / 5.0",
      ulasan: "Mantap pedasnya, aromanya harum menggugah selera.",
      deskripsi: "Nasi goreng adalah makanan yang berasal dari Tiongkok (diadaptasi secara nasional di seluruh wilayah Indonesia), Nasi yang dimasak dan ditumis bersama minyak, kecap manis, Bawang merah, bawang putih, dan cabai. Nasi goreng Indonesia memiliki ciri khas rasa manis-gurih dari kecap dan sering disajikan dengan telur (ceplok/dadar), irisan mentimun, tomat, serta kerupuk.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS956ado8-XVbKIhBJm6xg30q4Civ7T1Z8lmbMrz4GoDw&s=10"
    ),
    MakananModel(
      namaMakanan: "Nasi Kuning",
      harga: "10.000",
      rating: "4.5 / 5.0",
      ulasan: "Cocok buat sarapan, lauknya lengkap dan enak.",
      deskripsi: "Makanan yang berasal dari Jawa dan Manado/Sulawesi Utara (populer di berbagai penjuru Nusantara), Nasi yang dimasak menggunakan santan, kunyit, serta rempah aromatik seperti serai dan daun salam sehingga berwarna kuning cerah dan beraroma harum. Nasi kuning kerap hadir dalam perayaan adat (seperti tumpeng) dan disajikan dengan lauk pauk seperti telur iris, kering tempe, serundeng, abon, serta sambal.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTteoOX-01HQnyONL1XH9gnrOrdACIEyhyVhHWHdYrGiQ&s=10"
    ),
    MakananModel(
      namaMakanan: "Nasi Pecel",
      harga: "9.000",
      rating: "4.7 / 5.0",
      ulasan: "Bumbu kacangnya kental dan mantap rasanya.",
      deskripsi: "Nasi hangat dengan berbagai pilihan sayuran rebus segar disiram bumbu kacang gurih pedas manis.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQG3fYeZ98MytbNxPpLRXROVLnEousUhFBupoTJ1V5vw&s=10"
    ),
    MakananModel(
      namaMakanan: "Nasi Uduk",
      harga: "12.500",
      rating: "4.8 / 5.0",
      ulasan: "Rasanya gurih banget, sambalnya pedas mantap.",
      deskripsi: "Nasi yang dimasak dengan santan, daun pandan, dan serai, disajikan dengan bawang goreng, tempe orek, dan sambal.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5j-8J_CATaU9HZFSA0ZfWd7UQ2PkY4pB-6hLYM2dYgg&s=10"
    ),
    MakananModel(
      namaMakanan: "Sate Ayam",
      harga: "13.000",
      rating: "4.9 / 5.0",
      ulasan: "Dagingnya empuk dan bumbu kacangnya berasa banget.",
      deskripsi: "Tusukan daging ayam pilihan yang dibakar dengan olesan kecap, disajikan bersama bumbu kacang kental dan irisan bawang merah.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHXwKw6VJUzaJ4h7Ge8l-pI0IuNM7ldrsF1Bqwaworkw&s=10"
    ),
    MakananModel(
      namaMakanan: "Tahu Goreng",
      harga: "10.000",
      rating: "4.4 / 5.0",
      ulasan: "Renyah di luar dan lembut di dalam.",
      deskripsi: "Tahu pilihan yang digoreng garing dengan bumbu gurih khusus, cocok dinikmati selagi hangat.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDDySIV20MXiMV1RVUWPMNiwHnt4rwrUQ2UlAYUJLBaA&s=10"
    ),
  ];
}