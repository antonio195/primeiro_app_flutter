import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                color: Colors.amber,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              )
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.amber,
                width: 50,
                height: 50,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.brown,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.deepOrangeAccent,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.amberAccent,
                height: 50,
                width: 50,
              ),
            ],
          ),
          Container(
            color: Colors.deepOrange,
            width: 400,
            height: 40,
            child: const Text(
              'Diamante amarelo',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 28),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Clica aqui'))
        ],
      ),
    );
  }
}
