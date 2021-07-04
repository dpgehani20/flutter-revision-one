import 'package:flutter/material.dart';


class SecondScreen extends StatelessWidget {

  Container MyProduct(String imgVal,String heading,String subHeading) {
    return Container(
              width: 160.0,
              child: Card(
                child: Wrap(
                  children: [
                    Image.network(imgVal),
                    ListTile(
                      title: Text(heading),
                      subtitle: Text(subHeading)
                    ),
                  ],
                ),
              ),
    );//first card
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal ListView'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_basket),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        margin : EdgeInsets.symmetric(vertical: 20.0),
        height: 300.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            //cards
            MyProduct("https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",'Pink Rose','Rs.2500.00'),
            MyProduct("https://images.pexels.com/photos/1086178/pexels-photo-1086178.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",'Cluster Rose','Rs.2700.00'),
            MyProduct("https://images.pexels.com/photos/1166869/pexels-photo-1166869.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",'Daisy Flowers','Rs.1400.00'),
            MyProduct("https://images.pexels.com/photos/1697912/pexels-photo-1697912.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",'Susan Flowers','Rs.1300.00'),
            MyProduct("https://images.pexels.com/photos/4523890/pexels-photo-4523890.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",'Pink Tulips','Rs.2300.00'),
            MyProduct("https://images.pexels.com/photos/128868/thimble-common-foxglove-digitalis-purpurea-cinquefoil-128868.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",'Bell Flowers','Rs.2000.00')
          ],
        ),
      ),
    );
  }
}