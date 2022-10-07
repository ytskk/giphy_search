import 'dart:developer';
import 'dart:math' as math;
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:giphy/core/core.dart';
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
  @override
  Widget build(BuildContext context) {
    final imageToLoad =
        widget.gif.images.original ?? widget.gif.images.fixedWidth;

    return LayoutBuilder(
      builder: (context, constraints) {
        final sizeCoefficient = constraints.maxWidth /
            NumberUtils.parseOr(
              imageToLoad.width,
              MediaQuery.of(context).size.width,
            );

        return ClipRRect(
          borderRadius: BorderRadius.circular(4),
          // Caches data for 7 days.
          child: CachedNetworkImage(
            imageUrl: imageToLoad.url!,
            cacheKey: widget.gif.id,
            // Shows static downsized image placeholder while loading.
            // TODO: progress show. Coefficient to width.
            progressIndicatorBuilder: (_, __, progress) {
              return CachedNetworkImage(
                imageUrl: widget.gif.images.downsizedStill.url!,
                cacheKey: '${widget.gif.id}_still',

                /// Adds placeholder for gifs.
                ///
                /// Prevents jumping of the image when it loads.
                progressIndicatorBuilder: (_, __, ___) =>
                    _GifCardItemPlaceholder(
                  height: NumberUtils.parseOr(
                        widget.gif.images.downsizedStill.height,
                        100,
                      ) *
                      sizeCoefficient,
                  progress:
                      NumberUtils.parseOr(progress.progress, 0.1) as double,
                ),
              );
            },
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
        );
      },
    );
  }
}

class _GifCardItemPlaceholder extends StatelessWidget {
  const _GifCardItemPlaceholder({
    super.key,
    required this.height,
    required this.progress,
  });

  final double height;
  final double progress;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

    return SizedBox(
      height: height,
      child: AnimatedOpacity(
        opacity: progress,
        duration: const Duration(milliseconds: 300),
        child: ColoredBox(color: primaryColor),
      ),
    );
  }
}
