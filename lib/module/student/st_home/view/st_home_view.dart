import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';

class StHomeView extends StatefulWidget {
  const StHomeView({Key? key}) : super(key: key);

  Widget build(context, StHomeController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(
          top: 50,
          left: 20,
          right: 20,
        ),
        child: ListView(
          children: [
            StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('students')
                  .where("email", isEqualTo: controller.currentUser.email)
                  .snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }

                final doc = snapshot.data!.docs.first;
                // final email = doc.get('email') as String;
                final name = doc.get('name') as String;
                final nim = doc.get('nim') as String;
                // final role = doc.get('role') as String;
                return StTopProfile();
              },
            ),
          ],
        ),
      ),
      floatingActionButton: StScannerButton(
        onTap: () => controller.scanQrCode(),
      ),
    );
  }

  @override
  State<StHomeView> createState() => StHomeController();
}
