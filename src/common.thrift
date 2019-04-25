namespace java com.benxiaopao.thrift.model

struct TRResponse {
    1: required bool success = 1;
    2: optional i32 code;
    3: optional string desc;
    4: optional string bizContent;
}

struct TPPagination {
    1: required i32 pageNo;
    2: required i32 pageSize;
    3: required i32 offset;
}

struct TRPagination {
    1: required i32 pageNo;
    2: required i32 pageSize;
    3: required i32 totalCount;
}

struct TPTimeRange {
    1: optional i64 startTime;
    2: optional i64 endTime;
}