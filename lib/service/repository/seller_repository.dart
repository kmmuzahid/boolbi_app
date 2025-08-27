

class SellerRepository {
  // // Get Category list
  // Future<List<CategoryListModel>> getCategoryList() async {
  //   List<CategoryListModel> dataList = <CategoryListModel>[];

  //   try {
  //     var response = await ApiGetServices().apiGetServices(
  //       AppApiUrl.getCategoryListUrl,
  //     );

  //     if (response["data"].runtimeType != Null) {
  //       for (var element in response["data"]) {
  //         dataList.add(CategoryListModel.fromJson(element));
  //       }
  //     }
  //     return dataList;
  //   } catch (e) {
  //     appLog("Error in get Product List: $e");
  //   }

  //   return dataList;
  // }

  // // Get product list Api Call
  // Future<List<ProductListModel>> getProductList() async {
  //   List<ProductListModel> dataList = <ProductListModel>[];

  //   try {
  //     var response = await ApiGetServices().apiGetServices(
  //       AppApiUrl.getSellerProductListUrl,
  //     );

  //     if (response["data"].runtimeType != Null) {
  //       for (var element in response["data"]) {
  //         dataList.add(ProductListModel.fromJson(element));
  //       }
  //     }
  //     return dataList;
  //   } catch (e) {
  //     appLog("Error in get Product List: $e");
  //   }

  //   return dataList;
  // }

  // // Get Statistics data
  // Future<ChartScreenModel?> getStatisticsData() async {
  //   try {
  //     // Api Call
  //     var response = await ApiGetServices().apiGetServices(
  //       AppApiUrl.getStatisticsDataUrl,
  //     );
  //     if (response != null) {
  //       return ChartScreenModel.fromJson(response["data"]);
  //     } else {
  //       throw Exception("Failed to load profile data");
  //     }
  //   } catch (e) {
  //     appLog('error comes form Seller Repository method: $e');
  //   }
  //   return null;
  // }

  // // Get Product Details data
  // Future<ProductDetailsModel?> getProductDetailsData({required String id}) async {
  //   try {
  //     // Api Call
  //     var response = await NonAuthApi().sendRequest.get(
  //           "${AppApiUrl.getSellerProductDetailsUrl}$id",
  //         );
  //     if (response.data != null) {
  //       return ProductDetailsModel.fromJson(response.data["data"]);
  //     } else {
  //       throw Exception("Failed to get Product Details Data data");
  //     }
  //   } catch (e) {
  //     appLog('error comes form Seller Repository method: $e');
  //   }
  //   return null;
  // }

  // // Get Exchange Product Details data
  // Future<SellerExchangeListModel?> getExchangeProductDetailsData({required String id}) async {
  //   try {
  //     // Api Call
  //     var response = await ApiGetServices().apiGetServices(
  //       "${AppApiUrl.sellerExchangeUrl}/$id",
  //     );
  //     if (response != null) {
  //       return SellerExchangeListModel.fromJson(response["data"]);
  //     }
  //   } catch (e) {
  //     appLog('error comes form Seller Repository method: $e');
  //   }
  //   return null;
  // }

  // // Get Bank Info data
  // Future<BankInfoModel?> getBankInfoData() async {
  //   try {
  //     // Api Call
  //     var response = await ApiGetServices().apiGetServices(
  //       AppApiUrl.sellerInitBankInfoUpdateUrl,
  //     );
  //     if (response != null) {
  //       return BankInfoModel.fromJson(response["data"]);
  //     } else {
  //       throw Exception("Failed to get Bank Info data");
  //     }
  //   } catch (e) {
  //     appLog('error comes form Seller Repository method: $e');
  //   }
  //   return null;
  // }

  // // Get Home Screen data
  // Future<SellerHomeScreenModel?> geSellerHomeScreenData({String? filter}) async {
  //   try {
  //     // Api Call

  //     var response = await ApiGetServices().apiGetServices(
  //         // AppApiUrl.sellerHomeScreenUrl
  //         filter == "" ? AppApiUrl.sellerHomeScreenUrl : "${AppApiUrl.sellerHomeScreenUrl}?status=Delivered",
  //         statusCode: 201);

  //     if (response != null) {
  //       return SellerHomeScreenModel.fromJson(response["data"]);
  //     }
  //   } catch (e) {
  //     appLog('error comes form Seller Repository method: $e');
  //   }
  //   return null;
  // }

  // // Get Seller Order Details Data
  // Future<SellerOrderDetailsModel?> geSellerOrderDetailsData({String? id}) async {
  //   try {
  //     // Api Call
  //     var response = await ApiGetServices().apiGetServices("${AppApiUrl.sellerOrderDetailsUrl}$id");

  //     if (response != null) {
  //       return SellerOrderDetailsModel.fromJson(response["data"]);
  //     }
  //   } catch (e) {
  //     appLog('error comes form Seller Repository method: $e');
  //   }
  //   return null;
  // }

  // // Get User Trending product list Api Call
  // Future<List<UserProductModel>> getNewArrivalsProductListUser(int page, int limit) async {
  //   List<UserProductModel> dataList = <UserProductModel>[];
  //   Map<String, dynamic> param = {
  //     "sort": true,
  //   };
  //   var token = AppStorage().getToken();

  //   try {
  //     var response = await NonAuthApi().sendRequest.get(
  //           "${AppApiUrl.userSearchProductUrl}?page=$page&limit=$limit",
  //           options: Options(
  //             headers: {
  //               "Authorization": "$token"
  //             },
  //           ),
  //           queryParameters: param,
  //         );
  //     if (response.data["data"] != null) {
  //       final findData = response.data["data"];
  //       if (findData["products"] != null && findData["products"] is List) {
  //         for (var element in findData["products"]) {
  //           dataList.add(UserProductModel.fromJson(element));
  //         }
  //       }
  //     }
  //   } catch (e) {
  //     appLog("Error in get Product List: $e");
  //   }

  //   return dataList;
  // }

  // // Get seller Trending product list Api Call
  // Future<List<SellerTrendingListModel>> getTrendingProductList(int page, int limit) async {
  //   List<SellerTrendingListModel> dataList = <SellerTrendingListModel>[];

  //   try {
  //     var response = await ApiGetServices().apiGetServices(
  //       "${AppApiUrl.sellerTrendingProductListUrl}?page=$page&limit=$limit",
  //     );

  //     if (response["data"] != null) {
  //       final findData = response["data"];
  //       if (findData["products"] != null && findData["products"] is List) {
  //         for (var element in findData["products"]) {
  //           dataList.add(SellerTrendingListModel.fromJson(element));
  //         }
  //       }
  //     }
  //   } catch (e) {
  //     appLog("Error in get Product List: $e");
  //   }

  //   return dataList;
  // }

  // // Get Seller Search Product Api Call
  // Future<List<SellerSearchListModel>> getSellerSearchProductList({
  //   String? searchTerm,
  //   String? category,
  //   double? maxPrice,
  //   double? minPrice,
  //   int page = 1,
  // }) async {
  //   appLog("Category : $category");
  //   Map<String, dynamic>? param = {
  //     "page": page,
  //     "limit": 10,
  //   };

  //   /// add parameters
  //   if (searchTerm != null) {
  //     param["searchTerm"] = searchTerm;
  //   }
  //   if (category != "") {
  //     param["category"] = category;
  //   }
  //   if (minPrice != null) {
  //     param["minPrice"] = minPrice;
  //   }
  //   if (maxPrice != null) {
  //     param["maxPrice"] = maxPrice;
  //   }

  //   List<SellerSearchListModel> dataList = <SellerSearchListModel>[];

  //   try {
  //     var response = await ApiGetServices().apiGetServices(AppApiUrl.createSellerProductUrl, queryParameters: param);

  //     if (response["data"] != null) {
  //       for (var element in response["data"]) {
  //         dataList.add(SellerSearchListModel.fromJson(element));
  //       }
  //     }
  //   } catch (e) {
  //     appLog("Error in get search Product List: $e");
  //   }

  //   return dataList;
  // }

  // // Get Exchange list
  // Future<List<SellerExchangeListModel>> getExchangeList({int page = 1, int limit = 10}) async {
  //   List<SellerExchangeListModel> dataList = <SellerExchangeListModel>[];

  //   try {
  //     var response = await ApiGetServices().apiGetServices("${AppApiUrl.sellerExchangeUrl}?page=$page&limit=$limit");
  //     if (response["data"] != null) {
  //       final findData = response["data"];
  //       if (findData["orders"] != null && findData["orders"] is List) {
  //         for (var element in findData["orders"]) {
  //           dataList.add(SellerExchangeListModel.fromJson(element));
  //         }
  //       }
  //     } else {
  //       appLog("No data found");
  //     }
  //   } catch (e) {
  //     appLog("Error in get Seller Exchange List: $e");
  //   }

  //   return dataList;
  // }
}
