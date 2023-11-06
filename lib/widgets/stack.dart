import 'package:flutter/material.dart';

class StackHome extends StatefulWidget {
  const StackHome({super.key});

  @override
  State<StackHome> createState() => _StackHomeState();
}

class _StackHomeState extends State<StackHome> {
  static const heading = '\$599,000';
  static const subheading = '1449 Galenia RD, Auistin, TX';
  static const cardImage =
      NetworkImage('https://source.unsplash.com/random/800x600?house');

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Menu Principal"),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: null,
              ),
              ListTile(title: Text("Menu 2"), onTap: null)
            ],
          ),
        ),
        body: Card(
          elevation: 4.0,
          child: Column(
            children: <Widget>[
              const ListTile(
                title: Text("1449 Galenia Road"),
                //subtitle: Text(subheading),
                //trailing: Icon(Icons.favorite_outline),
              ),
              Container(
                height: 200.0,
                child: Ink.image(
                  image: cardImage,
                  fit: BoxFit.cover,
                ),
              ),
              const ListTile(
                title: Text(heading),
                subtitle: Text(subheading),
                trailing: Icon(Icons.favorite_outline),
              ),
              const Row(
                children: <Widget>[
                  Expanded(
                    child: const ListTile(
                      title: Text("4"),
                      subtitle: Text("Beds"),
                    ),
                  ),
                  Expanded(
                    child: const ListTile(
                      title: Text("3+"),
                      subtitle: Text("Baths"),
                    ),
                  ),
                  Expanded(
                    child: const ListTile(
                      title: Text("4,203"),
                      subtitle: Text("Sq. ft."),
                    ),
                  ),
                  Expanded(
                    child: const ListTile(
                      title: Text("8843"),
                      subtitle: Text("Lot Sq. ft."),
                    ),
                  ),
                ],
              ),
              ButtonBar(
                children: [
                  Icon(Icons.location_on),
                  TextButton(
                    child: const Text('View Map'),
                    onPressed: () {/* ... */},
                  ),
                  Icon(Icons.directions_car),
                  TextButton(
                    child: const Text('10 minutes away'),
                    onPressed: () {/* ... */},
                  )
                ],
              ),
              const ListTile(
                title: Text("Open Houses"),
                subtitle: Text("Friday 1:00pm - 4:00pm"),
                trailing: Text("2/24 >"),
              ),
              const ListTile(
                subtitle: Text("Saturday 1:00pm - 4:00pm"),
                trailing: Text("2/25 >"),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: MaterialButton(
          minWidth: 500,
          height: 60.0,
          onPressed: () {},
          color: Colors.red,
          child: Text('Contact Agent', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
