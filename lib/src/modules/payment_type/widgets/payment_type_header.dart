import 'package:flutter/material.dart';

import '../../../core/ui/widgets/base_header.dart';
import '../payment_type_controller.dart';

class PaymentTypeHeader extends StatefulWidget {
  const PaymentTypeHeader({super.key, required this.controller});

  final PaymentTypeController controller;

  @override
  State<PaymentTypeHeader> createState() => _PaymentTypeHeaderState();
}

class _PaymentTypeHeaderState extends State<PaymentTypeHeader> {
  bool? enabled;

  @override
  Widget build(BuildContext context) {
    return BaseHeader(
      title: 'Administrar formas de pagamento',
      buttonLabel: 'ADICIONAR',
      buttonPressed: () {
        widget.controller.addPayment();
      },
      filterWidget: DropdownButton<bool?>(
        value: enabled,
        items: const [
          DropdownMenuItem(value: null, child: Text('Todos')),
          DropdownMenuItem(value: false, child: Text('Ativos')),
          DropdownMenuItem(value: true, child: Text('Inativos')),
        ],
        onChanged: (value) {
          setState(() {
            enabled = value;
            widget.controller.changeFilter(value);
          });
        },
      ),
    );
  }
}
