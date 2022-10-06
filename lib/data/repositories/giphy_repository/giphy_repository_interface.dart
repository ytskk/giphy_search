import 'package:giphy/features/features.dart';

abstract class GiphyRepositoryInterface {
  Future<SearchResponseModel> search({
    /// GIPHY API Key.
    required String apiKey,

    /// Search query term or phrase. Adding @<username> anywhere in the q
    /// parameter effectively changes the search query to be a search for
    /// a specific user’s GIFs (user has to be public and verified user by GIPHY.)
    ///
    /// If the q parameter contains one of these words: sticker, stickers,
    /// or transparent, the search will return stickers content.
    ///
    /// Maximum length: 50 chars.
    required String q,

    /// The maximum number of objects to return. (Default: “25”).
    int? limit,

    /// Specifies the starting position of the results.(Default: “0”).
    // Maximum: “4999”
    int? offset,
  });
}
