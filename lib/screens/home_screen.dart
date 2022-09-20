import 'package:flutter/material.dart';
import 'package:my_app/widgets/product_list.dart';
import 'package:my_app/widgets/search_bar.dart';
import 'package:my_app/widgets/category_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.subject, color: Colors.blueAccent),
        title: RichText(
            text: TextSpan(children: [
          WidgetSpan(
              child: Icon(Icons.add_location, color: Colors.black, size: 16)),
          TextSpan(
              text: '15/2 New Texas',
              style: TextStyle(color: Colors.black87, fontSize: 16))
        ])),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                size: 18,
                color: Colors.grey,
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              //padding: EdgeInsets.all(10),
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                    text: 'Explore\n',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'best Outfits for you',
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )
                    ]),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          const SearchBar(),
          const ClothCategories(),
          const ProductList()
        ],
      ),
    );
  }
}
