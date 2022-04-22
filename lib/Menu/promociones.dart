import 'package:flutter/material.dart';

class Promo extends StatelessWidget {
  static final String title = 'PROMOCIONES';

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
            presentacion(),
            primerapromo(),
            segundapromo(),
          ],
        ),
      );

  Widget presentacion() => Card(
        shadowColor: Colors.red,
        elevation: 8,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.red],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'RED PIZZA',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Aqui encontraras las promociónes semanales que tenemos para ti, en Red Pizza encuentras los mejores productos al mejor precio',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      );

  Widget primerapromo() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: NetworkImage(
                'https://st2.depositphotos.com/1692343/5636/i/950/depositphotos_56360285-stock-photo-hot-homemade-pepperoni-pizza.jpg',
              ),
              child: InkWell(
                onTap: () {},
              ),
              height: 300,
              fit: BoxFit.cover,
            ),
            Text(
              'PIZZA HAWAIANA',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 40,
                fontFamily: 'Satisfy',
              ),
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                '2 x 1',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Satisfy',
                  fontSize: 60,
                ),
              ),
            ),
          ],
        ),
      );

  Widget segundapromo() => Card(
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
                    'https://st4.depositphotos.com/13194036/39974/i/1600/depositphotos_399747762-stock-photo-top-view-delicious-italian-pizza.jpg',
                  ),
                  height: 240,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Text(
                    'PIZZA ITALIANA AL 50%',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Satisfy',
                      fontSize: 33,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
