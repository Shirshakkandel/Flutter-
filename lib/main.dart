import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Homepage(), theme: ThemeData(primaryColor: Colors.purple)));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var myText = "Change my Name";
  TextEditingController _nameController = TextEditingController();
  @override
  void initState() {
  
    super.initState();
  }

  @override
  void dispose() {
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                    "assets/bg.jpg",
                    height: 200,
                  ),
                  SizedBox(height: 20),
                  Text(
                    myText,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter some Text",
                      labelText: "Name",
                    ),
                  )
                ],
              ),
            ),
          ),
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
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
    return scaffold;
  }
}
