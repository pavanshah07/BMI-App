import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'Pavan',
      'Juhi',
      'Raghav',
      'Hariom',
      'Sanjay',
      'Jeet',
      'Vikash'
    ];
    var arrSub = ['BTech', 'BCA', 'MCA', 'MTech', 'BscIt', 'IT'];
    var arrImage = [
      'assets/images/pvn5.jpg',
      'assets/images/dugu.jpg',
      'assets/images/boy.png',
      'assets/images/bmi1.png',
      'assets/images/pvn5.jpg',
      'assets/images/dugu.jpg',
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          title: Center(
              child: Text(
            'Listing of YourBMI',
            style: TextStyle(color: Colors.red),
          )),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(arrImage[index]),
                  ),
                ],
              ),
              title: Text(
                arrNames[index],
                style: TextStyle(color: const Color.fromARGB(255, 0, 59, 2)),
              ),
              subtitle: Text(
                arrSub[index],
                style: TextStyle(color: Color.fromARGB(255, 4, 104, 185)),
              ),
              trailing: Icon(Icons.add),
            );
          },
          itemCount: arrNames.length,
          separatorBuilder: (context, index) {
            return Divider(
              height: 100,
              thickness: 4,
            );
          },
        ));
  }
}
