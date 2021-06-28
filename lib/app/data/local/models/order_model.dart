// To parse this JSON data, do
//
//     final order = orderFromJson(jsonString);

import 'dart:convert';

import 'package:orders/app/domain/entities/order.dart';

List<OrderModel> orderModelsFromJson(String str) =>
    List<OrderModel>.from(json.decode(str).map((x) => OrderModel.fromJson(x)));

String orderModelsToJson(List<OrderModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OrderModel extends Order {
  OrderModel({
    String? id,
    String? orderDate,
    String? assignedDate,
    String? deliveredDate,
    String? orderStatus,
    String? courierStatus,
    int? orderAmount,
    int? payableAmount,
    int? numberOfProduct,
    String? customerName,
    required String customerAddress,
    String? customerArea,
    String? customerCity,
    String? customerCountry,
    String? phoneNumber,
    String? alternativePhoneNumber,
    String? paymentMethod,
    String? paymentStatus,
    String? shippingMethod,
    String? requestedDeliveryDate,
  }) : super(
          id: id,
          orderDate: orderDate,
          assignedDate: assignedDate,
          deliveredDate: deliveredDate,
          orderStatus: orderStatus,
          courierStatus: courierStatus,
          orderAmount: orderAmount,
          payableAmount: payableAmount,
          numberOfProduct: numberOfProduct,
          customerName: customerName,
          customerAddress: customerAddress,
          customerArea: customerArea,
          customerCity: customerCity,
          customerCountry: customerCountry,
          phoneNumber: phoneNumber,
          alternativePhoneNumber: alternativePhoneNumber,
          paymentMethod: paymentMethod,
          paymentStatus: paymentStatus,
          shippingMethod: shippingMethod,
          requestedDeliveryDate: requestedDeliveryDate,
        );

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        id: json["id"] == null ? null : json["id"],
        orderDate: json["orderDate"] == null ? null : json["orderDate"],
        assignedDate:
            json["assignedDate"] == null ? null : json["assignedDate"],
        deliveredDate: json["deliveredDate"],
        orderStatus: json["orderStatus"] == null ? null : json["orderStatus"],
        courierStatus:
            json["courierStatus"] == null ? null : json["courierStatus"],
        orderAmount: json["orderAmount"] == null ? null : json["orderAmount"],
        payableAmount:
            json["payableAmount"] == null ? null : json["payableAmount"],
        numberOfProduct:
            json["numberOfProduct"] == null ? null : json["numberOfProduct"],
        customerName:
            json["customerName"] == null ? null : json["customerName"],
        customerAddress:
            json["customerAddress"] == null ? null : json["customerAddress"],
        customerArea:
            json["customerArea"] == null ? null : json["customerArea"],
        customerCity:
            json["customerCity"] == null ? null : json["customerCity"],
        customerCountry:
            json["customerCountry"] == null ? null : json["customerCountry"],
        phoneNumber: json["phoneNumber"] == null ? null : json["phoneNumber"],
        alternativePhoneNumber: json["alternativePhoneNumber"] == null
            ? null
            : json["alternativePhoneNumber"],
        paymentMethod:
            json["paymentMethod"] == null ? null : json["paymentMethod"],
        paymentStatus:
            json["paymentStatus"] == null ? null : json["paymentStatus"],
        shippingMethod:
            json["shippingMethod"] == null ? null : json["shippingMethod"],
        requestedDeliveryDate: json["requestedDeliveryDate"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "orderDate": orderDate == null ? null : orderDate,
        "assignedDate": assignedDate == null ? null : assignedDate,
        "deliveredDate": deliveredDate,
        "orderStatus": orderStatus == null ? null : orderStatus,
        "courierStatus": courierStatus == null ? null : courierStatus,
        "orderAmount": orderAmount == null ? null : orderAmount,
        "payableAmount": payableAmount == null ? null : payableAmount,
        "numberOfProduct": numberOfProduct == null ? null : numberOfProduct,
        "customerName": customerName == null ? null : customerName,
        "customerAddress": customerAddress == null ? null : customerAddress,
        "customerArea": customerArea == null ? null : customerArea,
        "customerCity": customerCity == null ? null : customerCity,
        "customerCountry": customerCountry == null ? null : customerCountry,
        "phoneNumber": phoneNumber == null ? null : phoneNumber,
        "alternativePhoneNumber":
            alternativePhoneNumber == null ? null : alternativePhoneNumber,
        "paymentMethod": paymentMethod == null ? null : paymentMethod,
        "paymentStatus": paymentStatus == null ? null : paymentStatus,
        "shippingMethod": shippingMethod == null ? null : shippingMethod,
        "requestedDeliveryDate": requestedDeliveryDate,
      };
}
