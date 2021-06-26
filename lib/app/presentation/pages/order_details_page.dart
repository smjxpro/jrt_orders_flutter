import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:orders/app/domain/entities/order.dart';

class OrderDetailsPage extends StatelessWidget {
  static const routeName = '/order-details';

  @override
  Widget build(BuildContext context) {
    final order = ModalRoute.of(context)!.settings.arguments as Order?;

    return Scaffold(
      appBar: AppBar(
        title: Text('Order Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Customer Information'),
              SizedBox(
                height: 4,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.person_pin,
                            color: Colors.deepOrangeAccent,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "${order!.customerName!.capitalize}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.indigoAccent,
                          ),
                          Text('${order.phoneNumber}'),
                          SizedBox(
                            width: 8,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.phone_forwarded,
                            color: Colors.redAccent,
                          ),
                          Text('${order.alternativePhoneNumber}'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text('Order Information'),
              SizedBox(
                height: 4,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.library_books,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "${order.id}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: order.orderStatus == 'SHIPPED'
                                    ? Colors.green
                                    : Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: Text(
                              '${order.orderStatus}',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text('Order Date: '),
                          Text('${order.orderDate!.split(" ").first}'),
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text('${order.numberOfProduct}'),
                            ],
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.money,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text('Total Amount: '),
                              Text('${order.orderAmount}'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text('Payment Information'),
              SizedBox(
                height: 4,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.payment,
                                color: Colors.grey,
                              ),
                              Text('Payment Method:'),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "${order.paymentMethod}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.payment,
                                color: Colors.blueGrey,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: order.paymentStatus == 'NOT_PAID'
                                        ? Colors.red
                                        : Colors.green,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4))),
                                child: Text(
                                  '${order.paymentStatus!.replaceAll('_', " ")}',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.monetization_on,
                            color: Colors.grey,
                          ),
                          Text('Payable Amount:'),
                          SizedBox(
                            width: 4,
                          ),
                          Text('${order.payableAmount}'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text('Delivery Information'),
              SizedBox(
                height: 4,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.person_pin,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "${order.customerName!.capitalize}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: order.orderStatus == 'SHIPPED'
                                    ? Colors.green
                                    : Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: Text(
                              '${order.orderStatus}',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: Colors.blueGrey,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              '${order.customerAddress}',
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_searching,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text('${order.customerArea}'),
                            ],
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_city,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text('${order.customerCity}'),
                            ],
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.edit_location,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text('${order.customerCountry}'),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text('${order.assignedDate!.split(" ").first}'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check_box,
                            color: Colors.grey,
                          ),
                          Text('Courier Status:'),
                          SizedBox(
                            width: 4,
                          ),
                          Text('${order.courierStatus}'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.emoji_transportation,
                            color: Colors.grey,
                          ),
                          Text('Shipping Method:'),
                          SizedBox(
                            width: 4,
                          ),
                          Text('${order.shippingMethod}'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Card(),
            ],
          ),
        ),
      ),
    );
  }
}
