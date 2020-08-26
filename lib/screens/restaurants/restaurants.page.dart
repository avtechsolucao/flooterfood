import 'package:flutter/material.dart';

import './widgets/RestaurantCard.dart';
import '../../models/Restaurant.dart';

class RestaurantsPage extends StatefulWidget {
  RestaurantsPage({Key key}) : super(key: key);

  @override
  _RestaurantsPageState createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  List<Restaurant> _restaurants = [
    new Restaurant(
        name: 'EspecializaTI 2',
        image: '',
        contact: 'wilker@gmail.com',
        uuid: '345345345354'),
    new Restaurant(
        name: 'EspecializaTI 3',
        image: '',
        contact: 'wilkeralves@gmail.com',
        uuid: '345fkjl345345354'),
    new Restaurant(
        name: 'EspecializaTI 4',
        image: '',
        contact: 'wilkeralves3@gmail.com',
        uuid: '345fkjl34534oiuo5354'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurantes'),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: _buildRestaurants(context),
    );
  }

  Widget _buildRestaurants(context) {
    return Container(
      child: ListView.builder(
          itemCount: _restaurants.length,
          itemBuilder: (context, index) {
            final Restaurant restaurant = _restaurants[index];

            return RestaurantCard(
              uuid: restaurant.uuid,
              name: restaurant.name,
              image: restaurant.image,
              contact: restaurant.contact,
            );
          }),
    );
  }
}
