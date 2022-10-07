import 'package:flutter_cache_manager/flutter_cache_manager.dart';

const breakPointWidth = 600.0;

final baseGifsCacheManager = CacheManager(
  Config(
    'gifs',
    stalePeriod: const Duration(days: 1),
  ),
);
