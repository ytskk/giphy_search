import 'package:flutter_cache_manager/flutter_cache_manager.dart';

const breakPointWidth = 600.0;
const brandIconColorsCycleDuration = Duration(seconds: 50);

final baseGifsCacheManager = CacheManager(
  Config(
    'gifs',
    stalePeriod: const Duration(days: 1),
  ),
);
