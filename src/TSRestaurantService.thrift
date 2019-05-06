namespace java com.benxiaopao.thrift.service

include "common.thrift"
include "restaurant_model.thrift"
include "order_model.thrift"
include "product_model.thrift"

service TSRestaurantService {
    restaurant_model.TRListRestaurant listRestaurantByPage(restaurant_model.TPListRestaurant param);
    restaurant_model.TRListRestaurant listRestaurant(restaurant_model.TPListRestaurant param);
    i32 insertRestaurant(restaurant_model.TPRestaurant param);
    i32 updateRestaurant(restaurant_model.TPRestaurant param);
    i32 deleteRestaurant(i32 restaurantId);
    restaurant_model.TRRestaurant getRestaurantById(i32 restaurantId);

    order_model.TRListOrder listOrderByPage(order_model.TPListOrder param);
    order_model.TRListOrder listOrder(order_model.TPListOrder param);
    order_model.TROrder getOrderById(string orderId);
    i32 closeOrderById(string orderId);

    product_model.TRListProduct listProductByPage(product_model.TPListProduct param);
    product_model.TRListProduct listProduct(product_model.TPListProduct param);
    i32 insertProduct(product_model.TPProduct param);
    i32 updateProduct(product_model.TPProduct param);
    i32 deleteProduct(string productId);
    product_model.TRProduct getProductById(string productId);

    product_model.TRListProductCategory listProductCategoryByPage(product_model.TPListProductCategory param);
    product_model.TRListProductCategory listProductCategory(product_model.TPListProductCategory param);
    i32 insertProductCategory(product_model.TPProductCategory param);
    i32 updateProductCategory(product_model.TPProductCategory param);
    i32 deleteProductCategory(i32 productCategoryId);
    product_model.TRProductCategory getProductCategoryById(i32 productCategoryId);
}