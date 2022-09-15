import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyDrawer(),
      debugShowCheckedModeBanner: false,
    ));

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Demo'),
      ),
      drawer: Drawer(
        elevation: 12.0,
        backgroundColor: Colors.lightGreen[50],
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              // duration: Duration(seconds: 5),
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text('Muhammad Shakil'),
                accountEmail: Text('shakila@shakilawan.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/img.jpg'),
                  // backgroundImage: NetworkImage('https://images.pexels.com/photos/1912868/pexels-photo-1912868.jpeg?cs=srgb&dl=pexels-alexander-dummer-1912868.jpg&fm=jpg'),
                  backgroundColor: Colors.deepPurple,
                ),
              ),
            ),
            ListTile(
              // onTap: (){
              //   Navigator.pushNamed(context, );
              // } ,
              hoverColor: Colors.lime,
              title: Text(
                'Home Page',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Goto Home Page'),
              leading: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Text(
                'Profile',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Goto profile'),
              leading: Icon(
                Icons.person_add_alt,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Text(
                'Contact Me',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Have an Idea'),
              leading: Icon(
                Icons.contact_mail,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static const appTitle = 'Drawer Demo';
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: appTitle,
//       home: MyHomePage(title: appTitle),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(title)),
//       body: const Center(
//         child: Text('My Page!'),
//       ),
//       drawer: Drawer(
//         // Add a ListView to the drawer. This ensures the user can scroll
//         // through the options in the drawer if there isn't enough vertical
//         // space to fit everything.
//         child: ListView(
//           // Important: Remove any padding from the ListView.
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text('Drawer Header'),
//             ),
//             ListTile(
//               title: const Text('Item 1'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: const Text('Item 2'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
