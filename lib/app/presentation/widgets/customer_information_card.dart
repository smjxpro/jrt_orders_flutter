import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orders/app/_utls/utils.dart';
import 'package:orders/app/domain/entities/order.dart';

class CustomerInformationCard extends StatelessWidget {
  const CustomerInformationCard({
    Key? key,
    required this.order,
  }) : super(key: key);

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "${order.customerName!.capitalize}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Utils.launchURL('tel:${order.phoneNumber}');
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                      ),
                      Text('${order.phoneNumber}'),
                      SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone_forwarded,
                    ),
                    Text('${order.alternativePhoneNumber}'),
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
