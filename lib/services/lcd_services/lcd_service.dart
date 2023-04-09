import 'package:cloud_firestore/cloud_firestore.dart';

class LcdService {
  static addData({
    required String lcdId,
    required String lcdName,
  }) async {
    await FirebaseFirestore.instance.collection("data_lcd").add({
      "lcd_id": lcdId,
      "lcd_name": lcdName,
      "status": "Tersedia",
    });
  }

  static updateData({
    required String lcdId,
    required String lcdName,
    required String docId,
  }) async {
    await FirebaseFirestore.instance.collection("data_lcd").doc(docId).update({
      "lcd_id": lcdId,
      "lcd_name": lcdName,
    });
  }

  static deleteData({
    required String docId,
  }) async {
    await FirebaseFirestore.instance.collection("data_lcd").doc(docId).delete();
  }
}
