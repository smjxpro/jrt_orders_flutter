import 'package:flutter/material.dart';
import 'package:orders/app/domain/entities/order.dart';
import 'package:orders/app/presentation/widgets/delivery_information_card.dart';
import 'package:orders/app/presentation/widgets/customer_information_card.dart';
import 'package:orders/app/presentation/widgets/map_widget.dart';
import 'package:orders/app/presentation/widgets/order_information_card.dart';
import 'package:orders/app/presentation/widgets/payment_information_card.dart';

class OrderDetailsPage extends StatelessWidget {
  static const routeName = '/order-details';

  @override
  Widget build(BuildContext context) {
    final order = ModalRoute.of(context)!.settings.arguments as Order;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Order Details'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CustomerInformationCard(order: order),
                SizedBox(
                  height: 8,
                ),
                OrderInformationCard(order: order),
                SizedBox(
                  height: 8,
                ),
                PaymentInformationCard(order: order),
                SizedBox(
                  height: 8,
                ),
                DeliveryInformationCard(order: order),
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 250,
                    child: MapWidget(order.customerAddress!),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
