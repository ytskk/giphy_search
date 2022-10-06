import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:giphy/core/core.dart';
import 'package:giphy/data/data.dart';

import 'package:giphy/features/features.dart';
import 'package:giphy/main.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  static Widget create(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (context) => SearchBloc(giphyRepository: giphyRepository)
        ..add(const SearchLoadLatestQuery())
        ..add(
          const SearchLoadGifs(
            isFirstLoad: true,
          ),
        ),
      child: const SearchPage(),
    );
  }

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();

    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(
        controller: _textEditingController,
      ),
      body: BlocConsumer<SearchBloc, SearchState>(
        /// Provides haptic feedback when the data is loaded, depending on the
        /// status.
        listenWhen: (previous, current) {
          if (previous.status == SearchLoadStatus.inProgressInitial &&
              current.status == SearchLoadStatus.success) {
            HapticFeedback.mediumImpact();
          }
          if (previous.status == SearchLoadStatus.inProgress &&
              current.status == SearchLoadStatus.success) {
            HapticFeedback.lightImpact();
          }

          return true;
        },
        listener: (context, state) {
          if (state.status == SearchLoadStatus.initial) {
            _textEditingController.text = state.q;
          }
        },
        builder: (context, state) {
          if (state.status == SearchLoadStatus.inProgressInitial) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }

          if (state.status == SearchLoadStatus.inProgress ||
              state.status == SearchLoadStatus.success) {
            final List<GifModel> gifs = state.gifs!.data;

            if (gifs.isEmpty) {
              return const Center(
                child: Text('No gifs found'),
              );
            }

            return ResponsiveMasonryView(
              onRefresh: () async {
                context.read<SearchBloc>().add(const SearchLoadGifsRefresh());
              },
              onScroll: (scrollController) {
                /// If the user has scrolled to the bottom of the page - 700 px,
                /// load next page with throttle of 500 ms.
                if (scrollController.position.pixels >
                    scrollController.position.maxScrollExtent - 700) {
                  context.read<SearchBloc>().add(
                        const SearchLoadGifsNextPage(),
                      );
                }
              },
              itemCount: gifs.length,
              itemBuilder: (BuildContext context, int index) {
                final gif = gifs.elementAt(index);

                return GifCardItem(gif: gif);
              },
            );
          }

          return Text('status: ${state.status}');
        },
      ),
    );
  }
}
