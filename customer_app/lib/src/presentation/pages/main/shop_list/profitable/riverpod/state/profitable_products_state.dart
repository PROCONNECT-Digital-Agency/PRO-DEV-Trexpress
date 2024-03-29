import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/constants/constants.dart';
import '../../../../../../../models/models.dart';

part 'profitable_products_state.freezed.dart';

@freezed
class ProfitableProductsState with _$ProfitableProductsState {
  const factory ProfitableProductsState({
    @Default(false) bool isLoading,
    @Default(false) bool isSearching,
    @Default(false) bool isSearchLoading,
    @Default(false) bool isMoreLoading,
    @Default(false) bool isCategoriesLoading,
    @Default(false) bool isBrandsLoading,
    @Default([]) List<ProductData> products,
    @Default([]) List<ProductData> searchedProducts,
    @Default([]) List<CategoryData> categories,
    @Default([]) List<BrandData> brands,
    @Default([]) List<ShopData> shops,
    @Default(0) int selectedCategoryId,
    @Default(0) int selectedBrandId,
    @Default(0) int selectedSearchCategoryId,
    @Default(0) int selectedSearchBrandId,
    @Default('') String query,
    @Default(ListAlignment.vertically) ListAlignment listAlignment,
  }) = _ProfitableProductsState;

  const ProfitableProductsState._();
}
