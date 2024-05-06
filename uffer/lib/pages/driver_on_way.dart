import 'package:flutter/material.dart';
import 'package:uffer/widgets/common/route_info.dart';

// Importe o RouteInfo aqui

class DriverOnWayPage extends StatelessWidget {
  const DriverOnWayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[300], // Define a cor de fundo como cinza
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Página do Motorista a Caminho',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              // Chame o RouteInfo aqui
              RouteInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
