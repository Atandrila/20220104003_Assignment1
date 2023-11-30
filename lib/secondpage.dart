import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String bookName;
  final String authorInfo;
  final String rating;
  final String imageUrl;
  final String price;
  final String description;

  SecondPage({
    required this.bookName,
    required this.authorInfo,
    required this.rating,
    required this.imageUrl,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buy Now"),
        backgroundColor: Colors.blue[500],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Book Name: $bookName"),
            SizedBox(height: 16),
            Image.network(
              imageUrl,
              height: 200,
            ),
            SizedBox(height: 16),
            Text(authorInfo),
            SizedBox(height: 16),
            Text("Short Description: $description"),
            SizedBox(height: 16),
            Text("Rating: $rating"),
            Text("Price: $price"),
            SizedBox(height: 16),
            buildDropdownButton(),
            SizedBox(height: 16),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDropdownButton() {
    return DropdownButton<String>(
      items: <String>['Cash on delivery', 'Mobile banking', 'Credit Card'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {
      },
      hint: Text('Select an option for payment'),
    );
  }
}
