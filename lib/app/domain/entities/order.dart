class Order {
  Order({
    this.id,
    this.orderDate,
    this.assignedDate,
    this.deliveredDate,
    this.orderStatus,
    this.courierStatus,
    this.orderAmount,
    this.payableAmount,
    this.numberOfProduct,
    this.customerName,
    this.customerAddress,
    this.customerArea,
    this.customerCity,
    this.customerCountry,
    this.phoneNumber,
    this.alternativePhoneNumber,
    this.paymentMethod,
    this.paymentStatus,
    this.shippingMethod,
    this.requestedDeliveryDate,
  });

  String? id;
  String? orderDate;
  String? assignedDate;
  String? deliveredDate;
  String? orderStatus;
  String? courierStatus;
  int? orderAmount;
  int? payableAmount;
  int? numberOfProduct;
  String? customerName;
  String? customerAddress;
  String? customerArea;
  String? customerCity;
  String? customerCountry;
  String? phoneNumber;
  String? alternativePhoneNumber;
  String? paymentMethod;
  String? paymentStatus;
  String? shippingMethod;
  String? requestedDeliveryDate;

  Order copyWith({
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
    String? customerAddress,
    String? customerArea,
    String? customerCity,
    String? customerCountry,
    String? phoneNumber,
    String? alternativePhoneNumber,
    String? paymentMethod,
    String? paymentStatus,
    String? shippingMethod,
    String? requestedDeliveryDate,
  }) =>
      Order(
        id: id ?? this.id,
        orderDate: orderDate ?? this.orderDate,
        assignedDate: assignedDate ?? this.assignedDate,
        deliveredDate: deliveredDate ?? this.deliveredDate,
        orderStatus: orderStatus ?? this.orderStatus,
        courierStatus: courierStatus ?? this.courierStatus,
        orderAmount: orderAmount ?? this.orderAmount,
        payableAmount: payableAmount ?? this.payableAmount,
        numberOfProduct: numberOfProduct ?? this.numberOfProduct,
        customerName: customerName ?? this.customerName,
        customerAddress: customerAddress ?? this.customerAddress,
        customerArea: customerArea ?? this.customerArea,
        customerCity: customerCity ?? this.customerCity,
        customerCountry: customerCountry ?? this.customerCountry,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        alternativePhoneNumber:
            alternativePhoneNumber ?? this.alternativePhoneNumber,
        paymentMethod: paymentMethod ?? this.paymentMethod,
        paymentStatus: paymentStatus ?? this.paymentStatus,
        shippingMethod: shippingMethod ?? this.shippingMethod,
        requestedDeliveryDate:
            requestedDeliveryDate ?? this.requestedDeliveryDate,
      );
}
