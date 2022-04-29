import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InterfaceDemoPage extends StatelessWidget {
  final Uri _url = Uri.parse(
    'https://www.linkedin.com/in/jose-daniel-posso-garcia/',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first interface'),
      ),
      body: ListView(
        children: [
          Image.network(
            'https://media-exp1.licdn.com/dms/image/C5603AQGbLKfE792dTw/profile-displayphoto-shrink_400_400/0/1625678261956?e=1656547200&v=beta&t=T0hUpSV7aGrh4g8tVEOcPzkyoLUp0Ymnr1-RSjn-AsQ',
          ),
          Container(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Row(
              children: [
                Text(
                  'Jose Posso',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(child: SizedBox()),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star_half,
                  color: Colors.amber,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam nunc purus, dictum ut pellentesque sit amet, iaculis nec ligula. Suspendisse tortor dui, euismod a aliquam vitae, sodales eget metus. Etiam ultricies egestas leo, blandit lacinia odio lacinia at. Aliquam erat volutpat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In id tincidunt velit. Aliquam ultrices scelerisque purus, ut suscipit ex mattis non. Donec in magna ornare, tristique mi vitae, placerat enim.\n\nDonec porta porta suscipit. Praesent dui odio, feugiat vel ligula ac, hendrerit porttitor magna. Maecenas sagittis quam interdum, pretium libero ut, faucibus orci. Ut felis diam, pellentesque id ex at, vestibulum elementum odio. Fusce nec orci venenatis, eleifend lorem quis, mollis justo. Morbi eu justo at mi aliquet euismod eget ac ipsum. Duis fringilla suscipit mi, a consequat sapien. Cras volutpat iaculis egestas.',
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: MaterialButton(
              splashColor: Colors.amber,
              color: Colors.blue[900],
              textColor: Colors.white,
              onPressed: _launchUrl,
              child: Row(
                children: [
                  Icon(Icons.link),
                  Expanded(child: SizedBox()),
                  Text(
                    'More information',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _launchUrl() async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }
}
