namespace java com.benxiaopao.thrift.model

include "common.thrift"

struct TPProduct {
    1: string productId;
    2: string productName;
    3: double price;
    4: i32 stock;
    5: string description;
    6: string icon;
    7: i32 status;
    8: i32 categoryType;
    9: i32 restaurantId;
    10: i64 createTime;
    11: i64 updateTime;
}

struct TPListProduct {
    1: common.TPPagination pagination;
    2: TPProduct product;
}

struct TRProduct {
    1: string productId;
    2: string productName;
    3: double price;
    4: i32 stock;
    5: string description;
    6: string icon;
    7: i32 status;
    8: i32 categoryType;
    9: i32 restaurantId;
    10: i64 createTime;
    11: i64 updateTime;
}

struct TRListProduct {
    1: common.TRResponse response;
    2: common.TRPagination pagination;
    3: list<TRProduct> productList;
}

struct TPProductCategory {
    1: i32 categoryId;
    2: string categoryName;
    3: i32 categoryType;
    4: i32 restaurantId;
    5: i64 createTime;
    6: i64 updateTime;
}

struct TPListProductCategory {
    1: common.TPPagination pagination;
    2: TPProductCategory productCategory;
}

struct TRProductCategory {
    1: i32 categoryId;
    2: string categoryName;
    3: i32 categoryType;
    4: i32 restaurantId;
    5: i64 createTime;
    6: i64 updateTime;
    7: string restaurantName;
}

struct TRListProductCategory {
    1: common.TRResponse response;
    2: common.TRPagination pagination;
    3: list<TRProductCategory> productCategoryList;
}
