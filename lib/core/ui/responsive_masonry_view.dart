import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:giphy/constants/constants.dart';
import 'package:scrolls_to_top/scrolls_to_top.dart';

/// {@template responsive_masonry_view}
/// Creates scrollable masonry grid view with response.
///
/// If current width is less than [breakPointWidth], will show [smallAxisCount]
/// per row, else [largeAxisCount].
/// {@endtemplate}
class ResponsiveMasonryView extends StatefulWidget {
  /// {@macro responsive_masonry_view}
  const ResponsiveMasonryView({
    super.key,
    required this.itemBuilder,
    required this.itemCount,
    this.onScroll,
    this.onRefresh,
  });

  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;
  final ValueChanged<ScrollController>? onScroll;
  final Future<void> Function()? onRefresh;

  static const smallAxisCount = 2;
  static const largeAxisCount = 4;

  @override
  State<ResponsiveMasonryView> createState() => _ResponsiveMasonryViewState();
}

class _ResponsiveMasonryViewState extends State<ResponsiveMasonryView> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();

    if (widget.onScroll != null) {
      _scrollController.addListener(() => widget.onScroll!(_scrollController));
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final axisCount = constraints.maxWidth > breakPointWidth
            ? ResponsiveMasonryView.largeAxisCount
            : ResponsiveMasonryView.smallAxisCount;

        return RefreshIndicator(
          onRefresh: () async => await widget.onRefresh?.call(),
          child: ScrollsToTop(
            onScrollsToTop: (event) async {
              await _scrollController.animateTo(
                0,
                duration: const Duration(milliseconds: 350),
                curve: Curves.linear,
              );
            },
            child: MasonryGridView.builder(
              /// Allows to preload images.
              ///
              /// default value - 250
              cacheExtent: 800,
              controller: _scrollController,
              itemCount: widget.itemCount,
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: axisCount,
              ),
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              padding: const EdgeInsets.fromLTRB(
                12.0,
                24.0,
                12.0,
                64.0,
              ),
              itemBuilder: widget.itemBuilder,
            ),
          ),
        );
      },
    );
  }
}
