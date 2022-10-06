import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:giphy/data/data.dart';

class GifCardItem extends StatefulWidget {
  const GifCardItem({
    super.key,
    required this.gif,
  });

  final GifModel gif;

  @override
  State<GifCardItem> createState() => _GifCardItemState();
}

class _GifCardItemState extends State<GifCardItem> {
  bool isAuthorShown = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) {
        setState(() {
          isAuthorShown = true;
        });
      },
      onExit: (event) {
        setState(() {
          isAuthorShown = false;
        });
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4.0),
        // Caches data for 7 days.

        child: CachedNetworkImage(
          imageUrl: widget.gif.images.fixedWidth.url!,
          cacheKey: widget.gif.id,
          // Shows static downsized image placeholder while loading.
          placeholder: (_, __) => CachedNetworkImage(
            imageUrl: widget.gif.images.downsizedStill.url ?? '',
            cacheKey: '${widget.gif.id}_still',
            fit: BoxFit.cover,
          ),
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
