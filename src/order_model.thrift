namespace java com.benxiaopao.thrift.model

include "common.thrift"

struct TPOrder {
    1: string orderId;
    2: i32 payType;
    3: double totalAmout;
    4: double realTotalAmout;
    5: double shipmentExpense;
    6: i32 orderStatus;
    7: i32 orderType;
    8: i32 orderFrom;
    9: string pOrderId;
    10: i32 buyerId;
    11: string consignee;
    12: i32 province;
    13: i32 city;
    14: i32 district;
    15: string address;
    16: string tel;
    17: i32 restaurantId;
    18: i64 createTime;
    19: i64 updateTime;
}

struct TPListOrder {
    1: common.TPPagination pagination;
    2: TPOrder order;
}

struct TROrder {
    1: string orderId;
    2: i32 payType;
    3: double totalAmout;
    4: double realTotalAmout;
    5: double shipmentExpense;
    6: i32 orderStatus;
    7: i32 orderType;
    8: i32 orderFrom;
    9: string pOrderId;
    10: i32 buyerId;
    11: string consignee;
    12: i32 province;
    13: i32 city;
    14: i32 district;
    15: string address;
    16: string tel;
    17: i32 restaurantId;
    18: i64 createTime;
    19: i64 updateTime;
}

struct TRListOrder {
    1: common.TRResponse response;
    2: common.TRPagination pagination;
    3: list<TROrder> OrderList;
}
