import 'package:flutter/material.dart';

class OutletPage extends StatelessWidget {
  const OutletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              top: 5,
            ),
            child: Row(
              children: [
                const Icon(Icons.filter_list),
                buttonTags(text: 'ROPA'),
                buttonTags(text: 'CALZADO'),
                buttonTags(text: 'ACCESORIOS'),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 5,
            ),
            child: Row(
              children: [
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      debugPrint('Card tapped.');
                    },
                    child: SizedBox(
                      width: 190,
                      height: 250,
                      child: Column(
                        children: [
                          Image.network(
                            'https://rukminim2.flixcart.com/image/332/398/kyvvtzk0/shoe/5/q/w/9-500-corsac-black-original-imagbyzezm5vkhyf.jpeg?q=50',
                          ),
                          Text('A card that can be tapped'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      debugPrint('Card tapped.');
                    },
                    child: SizedBox(
                      width: 190,
                      height: 250,
                      child: Column(
                        children: [
                          Image.network(
                            'https://rukminim2.flixcart.com/image/332/398/kyvvtzk0/shoe/5/q/w/9-500-corsac-black-original-imagbyzezm5vkhyf.jpeg?q=50',
                          ),
                          Text('A card that can be tapped'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
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
