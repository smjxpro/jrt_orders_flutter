import 'package:flutter/material.dart';
import 'package:orders/app/domain/entities/order.dart';

class OrderInformationCard extends StatelessWidget {
  const OrderInformationCard({
    Key? key,
    required this.order,
  }) : super(key: key);

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                      Icons.calendar_today,
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
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text('Total Amount: '),
                        Text(
                          '${order.orderAmount} BDT',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
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
