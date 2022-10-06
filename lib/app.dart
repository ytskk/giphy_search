import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:giphy/constants/api_constants.dart';
import 'package:giphy/features/features.dart';
import 'package:giphy/main.dart';

import 'package:giphy/data/data.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();

    _textEditingController = TextEditingController(text: 'hello');
  }

  @override
  void dispose() {
    _textEditingController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
      ),
      home: SearchPage.create(context),
      // home: Scaffold(
      //   appBar: AppBar(
      //     backgroundColor: Colors.black,
      //     toolbarHeight: 70.0,
      //     title: ConstrainedBox(
      //       constraints: const BoxConstraints(
      //         maxWidth: 1024.0,
      //       ),
      //       child: Padding(
      //         padding: const EdgeInsets.symmetric(
      //           horizontal: 12.0,
      //           vertical: 8.0,
      //         ),
      //         child: Row(
      //           children: [
      //             const Icon(
      //               Icons.abc_rounded,
      //               size: 64.0,
      //             ),
      //             Expanded(
      //               child: TextField(
      //                 decoration: const InputDecoration(
      //                   border: OutlineInputBorder(),
      //                 ),
      //                 controller: _textEditingController,
      //                 onChanged: (value) {
      //                   setState(() {});
      //                 },
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      //   body: FutureBuilder<SearchResponseModel>(
      //     future: _fetchData(_textEditingController.text),
      //     builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
      //       if (snapshot.hasData) {
      //         final data = snapshot.data as SearchResponseModel;
      //         final List<GifModel> gifs = data.data;
      //
      //         return ResponsiveMasonryView(
      //           itemBuilder: (context, index) {
      //             final gif = gifs.elementAt(index);
      //
      //             return GifCardItem(gif: gif);
      //           },
      //           itemCount: gifs.length,
      //         );
      //       }
      //
      //       return const Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     },
      //   ),
      // ),
    );
  }

  Future<SearchResponseModel> _fetchData([String q = 'hello']) async {
    log('searching for $q');

    final apiKey = 'Roto2RsvLWnmSW9FdmV2579oGUc3k928';
    final dio = Dio(
      BaseOptions(baseUrl: ApiConstants.baseUrl),
    );
    final giphyRepository = GiphyRemoteRepository(dio: dio);
    final response = await giphyRepository.search(
      apiKey: apiKey,
      q: q,
    );
    return response;
  }
}
