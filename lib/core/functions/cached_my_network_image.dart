import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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
    /*imageBuilder: (context, imageProvider) => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.fill,
        ),
      ),
    ),*/
    placeholder: (context, url) => const CircularProgressIndicator(),
    //customSkelton(width: MediaQuery.sizeOf(context).width, height: 100),
    errorWidget: (context, url, error) =>
        const Center(child: Icon(Icons.error)),
  );
}
