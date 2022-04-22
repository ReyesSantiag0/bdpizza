import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static final String title = 'MENÚ';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            menu1(),
            menu2(),
            menu3(),
            menu4(),
          ],
        ),
      );

  Widget menu1() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: NetworkImage(
                    'https://st2.depositphotos.com/8183242/11254/i/950/depositphotos_112540210-stock-photo-homemade-pizza-with-zaatar-tomatoes.jpg',
                  ),
                  height: 240,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Text(
                    'PIZZA MIXTA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Satisfy',
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: Text(
                'Cortada en finas tiras el pimiento y en julianas los champiñones.',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      );

  Widget menu2() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: NetworkImage(
                    'https://st.depositphotos.com/2640119/3010/i/950/depositphotos_30103299-stock-photo-pepperoni-pizza.jpg',
                  ),
                  height: 240,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Text(
                    'PIZZA SALAMI',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Satisfy',
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: Text(
                'Deliciosa Pizza Salami y Queso Mozzarella, preparada con los más frescos ingredientes del horno a tu casa',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      );

  Widget menu3() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: NetworkImage(
                    'https://st.depositphotos.com/1063346/1344/i/950/depositphotos_13448802-stock-photo-pepperoni-pizza-on-a-white.jpg',
                  ),
                  height: 240,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Text(
                    'PIZZA TOCINEA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Satisfy',
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: Text(
                'Deliciosa pizza de tocineta!!! Salsa de tomate, carne especial de cerdo, queso mozzarella y tocineta también la puedes pedir con salsa barbacoa!!!',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      );

  Widget menu4() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: NetworkImage(
                    'https://st3.depositphotos.com/13324256/16360/i/1600/depositphotos_163603730-stock-photo-italian-pizza.jpg',
                  ),
                  height: 240,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Text(
                    'PIZZA VEGETAL',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Satisfy',
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: Text(
                'Pizza vegetal de coliflor. Es una de las pizzas vegetales más saludables que puedes probar.',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      );
}
