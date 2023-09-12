class AppConstants {
  AppConstants._();

  /// shared preferences keys
  static const String keyUser = 'keyUser';
  static const String keyToken = 'keyToken';
  static const String keyIsGuest = 'keyIsGuest';
  static const String keyLangLtr = 'keyLangLtr';
  static const String keyLastName = 'keyLastName';
  static const String keyFirstName = 'keyFirstName';
  static const String keyWalletData = 'keyWalletData';
  static const String keySavedStores = 'keySavedStores';
  static const String keyAppThemeMode = 'keyAppThemeMode';
  static const String keyCartProducts = 'keyCartProducts';
  static const String keyUiType = 'keyUiType';
  static const String keyLangSelected = 'keyLangSelected';
  static const String keyProfileImage = 'keyProfileImage';
  static const String keyTranslations = 'keyTranslations';
  static const String keyNewAddresses = 'keyNewAddresses';
  static const String keyLanguageData = 'keyLanguageData';
  static const String keyLikedProducts = 'keyLikedProducts';
  static const String keyViewedProducts = 'keyViewedProducts';
  static const String keyGlobalSettings = 'keyGlobalSettings';
  static const String keyLocalAddresses = 'keyLocalAddresses';
  static const String keyAddressSelected = 'keyAddressSelected';
  static const String keySelectedCurrency = 'keySelectedCurrency';
  static const String keyActiveAddressTitle = 'keyActiveAddressTitle';
  static const String keyAuthenticatedWithSocial = 'keyAuthenticatedWithSocial';

  /// hero tags
  static const String heroTagSelectUser = 'heroTagSelectUser';
  static const String heroTagSelectAddress = 'heroTagSelectAddress';
  static const String heroTagSelectCurrency = 'heroTagSelectCurrency';

  /// app strings
  static const String emptyString = '';

  /// api urls
  static const String baseUrl = 'https://api.goshops.org';
  static const String imageBaseUrl =
      'https://mupza-space.ams3.digitaloceanspaces.com/public/images';
  static const String googleApiKey = 'AIzaSyCcph5daZRNUdiB32KOI3JCwocY9B3I5F4';
  static const String privacyPolicyUrl = '$baseUrl/privacy-policy';
  static const String adminPageUrl = 'https://admin.goshops.org/dashboard';

  /// locales
  static const String localeCodeEn = 'en';

  /// location
  static const double demoLatitude = 41.304223;
  static const double demoLongitude = 69.2348277;
  static const double pinLoadingMin = 0.116666667;
  static const double pinLoadingMax = 0.611111111;
}

enum ShopStatus { notRequested, newShop, edited, approved, rejected }

enum UploadType {
  extras,
  brands,
  categories,
  shopsLogo,
  shopsBack,
  products,
  reviews,
  users,
}

enum PriceFilter { byLow, byHigh }

enum ListAlignment { singleBig, vertically, horizontally }

enum ExtrasType { color, text, image }

enum DeliveryTypeEnum { delivery, pickup }

enum ShippingDeliveryVisibilityType {
  cantOrder,
  onlyDelivery,
  onlyPickup,
  both,
}

enum OrderStatus { newOrder, accepted, ready, onAWay, delivered }

enum CouponType { fix, percent }

enum MessageOwner { you, partner }

enum BannerType { banner, look }

enum LookProductStockStatus { outOfStock, alreadyAdded, notAdded }

enum NewOrderStatus {
  newOrder,
  ready,
  declarationInAdvance,
  externalWarehouse,
  onTheWay,
  atCustoms,
  localWarehouse,
  inTheCourier,
  delivered,
}
