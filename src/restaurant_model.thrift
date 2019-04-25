namespace java com.benxiaopao.thrift.model

include "common.thrift"

struct TPRestaurant {
    1: i32 restaurantId;
    2: string restaurantName;
    3: string icon;
    4: string address;
    5: string tel;
    6: string tags;
    7: i64 createTime;
    8: i64 updateTime;
}

struct TPListRestaurant {
    1: common.TPPagination pagination;
    2: TPRestaurant restaurant;
}

struct TRRestaurant {
    1: i32 restaurantId;
    2: string restaurantName;
    3: string icon;
    4: string address;
    5: string tel;
    6: string tags;
    7: i64 createTime;
    8: i64 updateTime;
}

struct TRListRestaurant {
    1: common.TRResponse response;
    2: common.TRPagination pagination;
    3: list<TRRestaurant> restaurantList;
}
