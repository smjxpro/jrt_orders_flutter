import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orders/app/domain/entities/order.dart';

class DeliveryInformationCard extends StatelessWidget {
  const DeliveryInformationCard({
    Key? key,
    required this.order,
  }) : super(key: key);

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                          borderRadius: BorderRadius.all(Radius.circular(4))),
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
                    ),
                    Text('Courier Status:'),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '${order.courierStatus}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.emoji_transportation,
                    ),
                    Text('Shipping Method:'),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '${order.shippingMethod}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
