// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:lcd_loan/core.dart';

class StTopProfile extends StatelessWidget {
  final String? title;
  final String? titleContent;
  final String? subTitle;
  final String? subContent;
  const StTopProfile({
    Key? key,
    this.title,
    this.titleContent,
    this.subTitle,
    this.subContent,
  }) : super(key: key);

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
              children: [
                StColumnText(
                  title: title ?? 'Name',
                  content: titleContent ?? 'Rely Arfadillah Erlangga',
                ),
                StColumnText(
                  title: subTitle ?? 'NIM',
                  content: subContent ?? '2004411285',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
