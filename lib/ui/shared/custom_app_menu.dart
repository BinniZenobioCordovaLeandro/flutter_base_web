import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('appbar creado');

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Contador stateful',
            onPresed: () => Navigator.pushNamed(context, '/stateful'),
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Contador con provider',
            onPresed: () => Navigator.pushNamed(context, '/provider'),
            color: Colors.blue,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Otra pagina',
            onPresed: () => Navigator.pushNamed(context, '/no-existe'),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
