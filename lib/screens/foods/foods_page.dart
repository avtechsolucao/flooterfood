import 'package:flutter/material.dart';

import './widgets/Categories.dart';
import '../../models/Category.dart';
import '../../models/Food.dart';
import '../../widgets/food_card.dart';

class FoodsScreen extends StatefulWidget {
  FoodsScreen({Key key}) : super(key: key);

  @override
  _FoodsScreenState createState() => _FoodsScreenState();
}

class _FoodsScreenState extends State<FoodsScreen> {
  List<Category> _categories = [
    Category(name: 'Salgados1', description: 'ssdsdds', identify: 'sfdsdfsdf'),
    Category(name: 'Refri', description: 'ssdsdds', identify: 'sfdsdfsdf'),
    Category(name: 'Doces', description: 'ssdsdds', identify: 'sfdsdfsdf'),
    Category(name: 'Pizzas', description: 'ssdsdds', identify: 'sfdsdfsdf'),
    Category(name: 'Bebidas', description: 'ssdsdds', identify: 'sfdsdfsdf')
  ];
  List<Food> _foods = [
    Food(
        identify: 'sdfjsdf',
        image:
            'https://www.qgjeitinhocaseiro.com/wp-content/uploads/2019/10/como-fazer-sandu%C3%ADche-artigo-crop.jpg',
        description: 'Um sanduba',
        price: '10.20',
        title: 'Sanduíche'),
    Food(
        identify: 'sdfjsdf',
        image:
            'https://www.qgjeitinhocaseiro.com/wp-content/uploads/2019/10/como-fazer-sandu%C3%ADche-artigo-crop.jpg',
        description: 'Um sanduba',
        price: '10.20',
        title: 'Pizza de Peperoni'),
    Food(
        identify: 'sdfjsdf',
        image:
            'https://www.qgjeitinhocaseiro.com/wp-content/uploads/2019/10/como-fazer-sandu%C3%ADche-artigo-crop.jpg',
        description: 'Um sanduba',
        price: '10.20',
        title: 'Pudim'),
    Food(
        identify: 'sdfjsdf',
        image:
            'https://www.qgjeitinhocaseiro.com/wp-content/uploads/2019/10/como-fazer-sandu%C3%ADche-artigo-crop.jpg',
        description: 'Um sanduba',
        price: '10.20',
        title: 'Sushi'),
    Food(
        identify: 'sdfjsdf',
        image:
            'https://www.qgjeitinhocaseiro.com/wp-content/uploads/2019/10/como-fazer-sandu%C3%ADche-artigo-crop.jpg',
        description: 'Um sanduba',
        price: '10.20',
        title: 'Empada'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WFood Restaurante'),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: _buildScreen(),
    );
  }

  Widget _buildScreen() {
    return Column(
      children: <Widget>[Categories(_categories), _buildFoods()],
    );
  }

  Widget _buildFoods() {
    return Container(
      height: (MediaQuery.of(context).size.height - 230),
      width: MediaQuery.of(context).size.width,
      //color: Colors.black,
      child: ListView.builder(
        itemCount: _foods.length,
        itemBuilder: (context, index) {
          final Food food = _foods[index];
          return FoodCard(
              identify: food.identify,
              description: food.description,
              image: food.image,
              price: food.price,
              title: food.title);
        },
      ),
    );
  }
}
