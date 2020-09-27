import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Homepage(), theme: ThemeData(primaryColor: Colors.purple)));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.teal,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Shirshak kandel"),
                accountEmail: Text("shirshakkandel@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://lh5.googleusercontent.com/-QZ-4aYbqPHs/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucmVtbF64EAjd6Akptx0ja_vL20ZHQ/photo.jpg"),
                )),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("shirshak kandel"),
              subtitle: Text("Developer"),
              trailing: Icon(Icons.edit),
              
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Ujjwal Adhikari"),
              subtitle: Text("Marketer"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Sudan Raut"),
              subtitle: Text("Civil engineer"),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
    return scaffold;
  }
}
