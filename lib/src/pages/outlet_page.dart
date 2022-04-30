import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/widgets/BottomNavBarRaisedInsetFb1.dart';

class OutletPage extends StatelessWidget {
  const OutletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        title: Column(
          children: const [
            Text(
              'HI ENERGY',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '22 RESULTADOS',
              style: TextStyle(
                color: Color.fromARGB(221, 153, 153, 153),
                fontSize: 12,
              ),
            ),
          ],
        ),
        leadingWidth: 90,
        leading: Image.asset(
          'assets/img/logo.png',
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black87,
            ),
            tooltip: 'Search',
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 60,
            padding: const EdgeInsets.only(
              left: 20,
              top: 5,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const Icon(Icons.filter_list),
                buttonTags(text: 'ROPA'),
                buttonTags(text: 'CALZADO'),
                buttonTags(text: 'ACCESORIOS'),
                buttonTags(text: 'COSMETICOS'),
                buttonTags(text: 'INTERIORES'),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(5),
              child: GridView.count(
                crossAxisCount: 1,
                children: [
                  productCard(),
                  productCard(),
                  // productCard(),
                  // productCard(),
                  // productCard(),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const BottomNavBarRaisedInsetFb1(),
    );
  }

  Widget bottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorite',
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.shopping_cart_rounded),
        //   label: 'Shop',
        // ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.radar),
        //   label: 'Radar',
        // ),
      ],
      // currentIndex: () {},
      selectedItemColor: Colors.grey[800],
      // onTap: () {},
    );
  }

  Widget productCard() {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text('Camiseta'),
            subtitle: Text('Black'),
            trailing: Icon(Icons.favorite_outline),
          ),
          Expanded(
            child: Image.asset(
              'assets/img/camiseta.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit dolorem ipsum quia dolor sit amet, consectetur, adipisci veli...',
            ),
          ),
          ButtonBar(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_shopping_cart,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buttonTags({String text = ''}) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
            primary: Colors.grey,
            side: const BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
          onPressed: () {},
          child: Text(
            text,
          ),
        ),
      ],
    );
  }
}
