import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controler/list_makanan_controller.dart';
import 'package:my_app/routes.dart';
import 'package:my_app/components/custom_textview.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // Menggunakan controller yang sama untuk mengambil data makanan
  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextView(
                "Rekomendasi Makanan",
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 12),

              // ListViewBuilder horizontal dibungkus Container dengan height
              Container(
                height: 220, // Tinggi wajib diberikan agar list horizontal tidak error
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // Mengubah list menjadi horizontal
                  itemCount: controller.dataMakanan.length,
                  itemBuilder: (context, index) {
                    final makanan = controller.dataMakanan[index];
                    return Container(
                      width: 160, // Lebar card untuk tampilan horizontal
                      margin: EdgeInsets.only(right: 12),
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(Routes.detailMakanan, arguments: makanan);
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                makanan.image,
                                height: 120,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) =>
                                    Container(
                                  height: 120,
                                  color: Colors.grey[300],
                                  child: Icon(Icons.fastfood, size: 40),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomTextView(
                                      makanan.namaMakanan,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      maxLines: 1,
                                    ),
                                    SizedBox(height: 4),
                                    CustomTextView(
                                      "Rp ${makanan.harga}",
                                      fontSize: 12,
                                      color: Colors.green[700]!,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}