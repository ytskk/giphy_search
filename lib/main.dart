import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:giphy/app.dart';
import 'package:giphy/constants/api_constants.dart';
import 'package:giphy/data/data.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Sets the status bar color to transparent (only works on Android).
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      // statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ),
  );
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.edgeToEdge,
  );

  await registerSingletons();

  runApp(const App());
}

Future<void> registerSingletons() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  GetIt.I.registerSingleton<SharedPreferences>(sharedPreferences);
  GetIt.I.registerSingleton<Dio>(
    Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
      ),
    ),
  );
  GetIt.I.registerSingleton<GiphyRepositoryInterface>(
    GiphyRemoteRepository(dio: dio),
  );
}

SharedPreferences get sharedPreferences => GetIt.I<SharedPreferences>();
Dio get dio => GetIt.I<Dio>();
GiphyRepositoryInterface get giphyRepository =>
    GetIt.I<GiphyRepositoryInterface>();
