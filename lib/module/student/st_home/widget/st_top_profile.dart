import 'package:flutter/material.dart';
import 'package:lcd_loan/core.dart';
import 'package:lcd_loan/module/student/st_home/widget/st_column_text.dart';
import 'package:lcd_loan/state_util.dart';

class StTopProfile extends StatelessWidget {
  const StTopProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const StHistoryView());
      },
      child: Container(
        height: 120,
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 14,
        ),
        decoration: BoxDecoration(
          color: Colors.indigo[50],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Container(
              width: 95,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: AssetImage('assets/images/profile.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                StColumnText(
                  title: 'Name',
                  content: 'Rely Arfadillah Erlangga',
                ),
                StColumnText(
                  title: 'NIM',
                  content: '2004411285',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
