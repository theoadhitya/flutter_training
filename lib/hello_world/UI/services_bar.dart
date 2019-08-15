import 'package:flutter/material.dart';

class Servicebar extends StatefulWidget {
  @override
  ServiceBarState createState() => ServiceBarState();
}

class ServiceBarState extends State<Servicebar> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleService(serviceName: 'Flights', icons: Icons.airplanemode_active, iconColor: Colors.blue),
              SingleService(serviceName: 'Hotels', icons: Icons.hotel, iconColor: Colors.lightBlue[900]),
              SingleService(serviceName: 'Flight +\nHotel', icons: Icons.local_hotel, iconColor: Colors.purple),
              SingleService(serviceName: 'Xperience', icons: Icons.check, iconColor: Colors.orange),
              SingleService(serviceName: 'Eats', icons: Icons.local_dining, iconColor: Colors.red),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SingleService(serviceName: 'Trains', icons: Icons.train, iconColor: Colors.orangeAccent),
              SingleService(serviceName: 'Bus &\nShuttle', icons: Icons.directions_bus, iconColor: Colors.green),
              SingleService(serviceName: 'Airport\nTransfer', icons: Icons.airport_shuttle, iconColor: Colors.cyan),
              SingleService(serviceName: 'Car Rental', icons: Icons.directions_car, iconColor: Colors.cyan[800]),
              SingleService(serviceName: 'All\nProducts', icons: Icons.grain, iconColor: Colors.black26),
            ],
          ),
        ] 
      ),
    );
  }
}

class SingleService extends StatelessWidget {
  final String serviceName;
  final IconData icons;
  final Color iconColor;

  SingleService({this.icons, this.iconColor, this.serviceName});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(shape: BoxShape.circle, color: iconColor),
          margin: EdgeInsets.only(bottom: 5.0),
          child: IconButton(
            icon: Icon(icons),
            color: Colors.white,
            iconSize: 30.0,
            onPressed: () {},
          ),
        ),

        Text(serviceName, style: TextStyle(color: Colors.black38, fontSize: 11.5), textAlign: TextAlign.center, softWrap: true,)
      ]
    );
  }
}