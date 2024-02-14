import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_app/core/widgets/shimmer_skeleton.dart';

CachedNetworkImage cachedMyNetworkImage({
  required String imageUrl,
  required double width,
  required double height,
  BoxFit? fit = BoxFit.fill,
}) {
  return CachedNetworkImage(
    width: width,
    height: height,
    imageUrl: imageUrl,
    fit: fit,
    placeholder: (context, url) => customSkelton(width: width, height: height),
    errorWidget: (context, url, error) =>
        const Center(child: Icon(Icons.error)),
  );
}
