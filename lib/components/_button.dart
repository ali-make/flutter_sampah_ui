import 'package:flutter/material.dart';

class ButtonPlus extends StatelessWidget {
  const ButtonPlus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      color: Colors.white,
      height: 40.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton.icon(
            onPressed: () => print('Kab.Karawang'),
            icon: const Icon(
              Icons.location_city,
              color: Colors.white,
            ),
            label: Text('Kab.Karawang'),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
          ),
          const VerticalDivider(
            width: 8.0,
          ),
          ElevatedButton.icon(
            onPressed: () => print('Posts Archive'),
            icon: const Icon(
              Icons.archive,
              color: Colors.white,
            ),
            label: Text('Posts Archive'),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
