import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controler/list_makanan_controller.dart';
import 'package:my_app/routes.dart';
import 'package:my_app/components/custom_textview.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Makanan")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.dataMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.dataMakanan[index];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 6),
              child: InkWell(
                onTap: () {
                  Get.toNamed( Routes.detailMakanan, arguments: makanan);
                },
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      makanan.image,
                      width: 55,
                      height: 55,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          Icon(Icons.fastfood, size: 40),
                    ),
                  ),
                  title: CustomTextView(
                    makanan.namaMakanan,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: CustomTextView(
                    makanan.harga,
                    fontSize: 14,
                    color: Colors.green[700],
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded, size: 16),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}