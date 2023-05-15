import 'package:flutter/material.dart';

import 'widgets/payment_type_header.dart';

class PaymentTypePage extends StatelessWidget {
  const PaymentTypePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      padding: const EdgeInsets.only(
        left: 40,
        top: 40,
      ),
      child: const Column(
        children: [PaymentTypeHeader()],
      ),
    );
  }
}
