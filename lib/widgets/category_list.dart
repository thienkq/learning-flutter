import 'package:flutter/material.dart';
import 'package:my_app/model/category.dart';

class _ClothCategoriesState extends State<ClothCategories> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: allCategories.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.shade200)),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 80,
                      child: Icon(
                        Icons.image,
                        size: 45,
                        color: Colors.orange,
                      ),
                    ),
                    Container(
                      height: 20,
                      child: Text(allCategories[index].title),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class ClothCategories extends StatefulWidget {
  const ClothCategories({
    Key? key,
  }) : super(key: key);

  @override
  State<ClothCategories> createState() => _ClothCategoriesState();
}
