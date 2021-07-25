import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterProviderPage extends StatefulWidget {
  const CounterProviderPage({Key? key}) : super(key: key);

  @override
  _CounterProviderPageState createState() => _CounterProviderPageState();
}

class _CounterProviderPageState extends State<CounterProviderPage> {
  int counter = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppMenu(),
          Spacer(),
          Text(
            'Contador Provider',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'counter: $counter',
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                text: 'Incrementar',
                onPresed: () => setState(() => counter++),
              ),
              CustomFlatButton(
                text: 'Decrementar',
                onPresed: () => setState(() => counter--),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
