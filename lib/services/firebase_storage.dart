import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FirebaseStorageServices extends GetxController {
  FirebaseStorage storage = FirebaseStorage.instance;

  void akses() async {
    var myRef = storage.ref();

    var myList = await myRef.listAll();

    myList.items.forEach((element) {
      final url = storage.ref(element.name).getDownloadURL();
      print(url);
    });
  }

  // Future<String> downloadURL(String imgName) async {
  //   String downloadURL = await storage.ref('jenis/$imgName').getDownloadURL();
  //   return downloadURL;
  // }
}
