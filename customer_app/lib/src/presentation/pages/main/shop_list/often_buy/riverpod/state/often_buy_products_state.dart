import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/constants/constants.dart';
import '../../../../../../../models/models.dart';

part 'often_buy_products_state.freezed.dart';

@freezed
class OftenBuyProductsState with _$OftenBuyProductsState {
  const factory OftenBuyProductsState({
    @Default(false) bool isLoading,
    @Default(false) bool isMoreLoading,
    @Default(false) bool isSearching,
    @Default(false) bool isSearchLoading,
    @Default(false) bool isCategoriesLoading,
    @Default(false) bool isBrandsLoading,
    @Default([]) List<ShopData> shops,
    @Default([]) List<CategoryData> searchedCategories,
    @Default([]) List<ProductData> products,
    @Default([]) List<ProductData> searchedProducts,
    @Default([]) List<CategoryData> categories,
    @Default([]) List<BrandData> brands,
    @Default(0) int selectedCategoryId,
    @Default(0) int selectedBrandId,
    @Default(0) int selectedSearchCategoryId,
    @Default(0) int selectedSearchBrandId,
    @Default('') String query,
    @Default(ListAlignment.vertically) ListAlignment listAlignment,
  }) = _OftenBuyProductsState;

  const OftenBuyProductsState._();
}