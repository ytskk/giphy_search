import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:giphy/features/features.dart';

class SearchAppBar extends StatelessWidget with PreferredSizeWidget {
  const SearchAppBar({
    super.key,
    this.controller,
  });

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return AppBar(
          title: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 1024.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      context.read<SearchBloc>().add(
                            SearchQueryChanged(
                              q: value,
                            ),
                          );
                    },
                  ),
                ),
              ],
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: AnimatedSize(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeOut,
              child: state.status == SearchLoadStatus.inProgress
                  ? const LinearProgressIndicator()
                  : const SizedBox.shrink(),
            ),
          ),
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}