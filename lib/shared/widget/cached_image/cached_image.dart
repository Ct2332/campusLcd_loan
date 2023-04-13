// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'package:lcd_loan/shared/util/custom_cache_manager/custom_cache_manager.dart';

class WdCachedImage extends StatelessWidget {
  final String? imgUrl;
  final double size;
  const WdCachedImage({
    Key? key,
    this.imgUrl,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: CachedNetworkImage(
          imageUrl: imgUrl ?? "https://bit.ly/413L5Z3",
          key: UniqueKey(),
          cacheManager: customCacheManager,
          fit: BoxFit.cover,
          placeholder: (context, url) => Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[200]!,
            child: Container(color: Colors.grey[300]),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
