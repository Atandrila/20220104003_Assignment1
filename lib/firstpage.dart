import 'package:flutter/material.dart';
import 'secondpage.dart';
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book List"),
        backgroundColor: Colors.blue[500],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              buildBookCard(
                context,
                'Owl Moon',
                ' Author: John Doe',
                ' 4.5',
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                '\$20.00',
                'The story deals with a father who takes his child owling for the first time on a cold winter night. Along their way, they encounter a great horned owl. While the first-person text does not specify the childs gender, the jacket flap copy refers to the characters as "a little girl and her father".',
              ),
              SizedBox(height: 20),
              buildBookCard(
                context,
                'The Owl Book',
                ' Author: Jane Russ',
                ' 4.0',
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                '\$30.00',
                ' The Owl Book is far more than just another title on the subject, collecting its surrounding myth, legend, art and literature in fascinating detail.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBookCard(
      BuildContext context,
      String bookName,
      String authorInfo,
      String rating,
      String imageUrl,
      String price,
      String description,
      ) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
          children:[
            Image.network(
              imageUrl,
              height: 100,
            ),
            SizedBox(height: 16),
            Expanded(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(" Book Name: $bookName"),
                Text(authorInfo),
                Text(" Rating: $rating"),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondPage(
                          bookName: bookName,
                          authorInfo: authorInfo,
                          rating: rating,
                          imageUrl: imageUrl,
                          price: price,
                          description: description,
                        ),
                      ),
                    );
                  },
                  child: Text(" Buy Now"),
                ),
              ],
            ),
            ),
          ],
        ),
      ],
        ),
      ),
    );
  }
}
