import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List bookName = [
    'Police on Camera',
    'Police Corruption',
    'Lost Light',
    "I'm a Police Officer",
    'Our Police',
  ];
  List bookDescription = [
    'Surveillance, Privacy, and Accountability',
    'Surveillance, Privacy, and Accountability',
    'Surveillance, Privacy, and Accountability',
    'Surveillance, Privacy, and Accountability',
    'Surveillance, Privacy, and Accountability',
  ];
  List bookImage = [
    'https://images.routledge.com/common/jackets/crclarge/978113834/9781138342439.jpg',
    'https://images.routledge.com/common/jackets/crclarge/978184392/9781843924104.jpg',
    'https://www.michaelconnelly.com/wp-content/uploads/2011/09/Lost-Light-1.jpg',
    'https://prodimage.images-bn.com/pimages/9781683351702_p0_v1_s550x406.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/51Tw3Y3HJkL._SX391_BO1,204,203,200_.jpg',
  ];
  List bookPrice = [
    '10 JD',
    '12 JD',
    '15 JD',
    '11 JD',
    '13 JD',
  ];
  List bookColor = [
    Colors.teal[200],
    Colors.pink[200],
    Colors.green[300],
    Colors.lime[400],
    Colors.brown[300],
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assigmnent 5',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assigmnent 5'),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            itemCount: bookName.length,
            itemBuilder: (context, index) {
              return Card(
                color: bookColor[index],
                shadowColor: bookColor[index],
                elevation: 10,
                child: ListTile(
                  title: Text('${bookName[index]}'),
                  subtitle: Text('${bookDescription[index]}'),
                  trailing: Image.network('${bookImage[index]}'),
                  leading: Text('${bookPrice[index]}'),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
