import 'package:flutter/material.dart';

class PaymentAndDate extends StatelessWidget {
  const PaymentAndDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
        bottom: 8,
        left: 13,
        right: 13,
      ),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                print('Money Pay Clicked!');
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Payment'),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.money),
                      Text('In cash'),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                print('Date & time Clicked!');
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Date and time'),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [Icon(Icons.calendar_month), Text('Now')],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
