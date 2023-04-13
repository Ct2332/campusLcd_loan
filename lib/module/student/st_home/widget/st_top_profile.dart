// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:lcd_loan/core.dart';
import 'package:lcd_loan/shared/widget/cached_image/cached_image.dart';

class StTopProfile extends StatelessWidget {
  final String? title;
  final String? titleContent;
  final String? subTitle;
  final String? subContent;
  final String? imgUrl;
  const StTopProfile({
    Key? key,
    this.title,
    this.titleContent,
    this.subTitle,
    this.subContent,
    this.imgUrl,
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
            WdCachedImage(
              size: 95,
              imgUrl: imgUrl,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
            ),
          ],
        ),
      ),
    );
  }
}
