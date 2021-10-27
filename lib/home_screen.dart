import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<IconData> list_icons = [Icons.shopping_bag, Icons.location_on];
  List list_title = ["Work", "Sir Adamjee Institute of Management"];
  List list_subtitle = [
    "Usman Institute of Technology",
    "W375+P8R,Federal B Area Block 2 Gulberg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Align(
            alignment: Alignment.topRight,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('images/image.jpeg'),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(12, 10, 12, 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff0277bd)),
            width: double.infinity,
            height: 120,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 0, 15),
                    child: Text(
                      "New way to pay",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Try Uber Cash->",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200]),
                width: MediaQuery.of(context).size.width * 0.50,
                height: MediaQuery.of(context).size.height * 0.16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(80, 0, 5, 10),
                      child: Image.asset(
                        'images/carIcon.png',
                        width: 80,
                        height: 80,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        "Ride",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200]),
                width: MediaQuery.of(context).size.width * 0.50,
                height: MediaQuery.of(context).size.height * 0.16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(80, 0, 5, 10),
                      child: Image.asset(
                        'images/box.png',
                        width: 80,
                        height: 80,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        "Packages",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(12, 10, 12, 0),
            height: 50,
            color: Colors.grey.shade200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey.shade300),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: 20, vertical: 18))),
                    onPressed: () {},
                    child: Text(
                      "Enter Pickup Point",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
                Expanded(
                  child: Container(
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 12,
                        backgroundImage: AssetImage("images/clock.png"),
                      ),
                      title: Transform.translate(
                        offset: Offset(-16, 0),
                        child: Text(
                          "Now",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      trailing: Transform.translate(
                        offset: Offset(-15, 0),
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.20,
            child: ListView.builder(
                itemCount: list_title.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(list_icons[index]),
                    title: Text("${list_title[index]}"),
                    subtitle: Text("${list_subtitle[index]}"),
                    trailing: Icon(Icons.arrow_forward),
                  );
                }),
          ),
          Text("Around You")
        ],
      ),
    );
  }
}
