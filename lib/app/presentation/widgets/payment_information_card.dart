import 'package:flutter/material.dart';
import 'package:orders/app/domain/entities/order.dart';

class PaymentInformationCard extends StatelessWidget {
  const PaymentInformationCard({
    Key? key,
    required this.order,
  }) : super(key: key);

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                        ),
                        Text('Payment Method:'),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "${order.paymentMethod!.replaceAll('_', '')}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
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
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: Text(
                        '${order.paymentStatus!.replaceAll('_', " ")}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.monetization_on,
                    ),
                    Text('Payable Amount:'),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '${order.payableAmount} BDT',
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
