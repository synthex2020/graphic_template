import 'package:flutter/material.dart';

class FarmDisplay extends StatelessWidget {
  String url = "https://images.squarespace-cdn.com/content/59765fd317bffcafaf5ff75c/1579455528721-Z1U2Y9VAO75ZX223QQUF/AR-200119620.jpg?content-type=image%2Fjpeg";
  String name = "Bennet Farms";
  String province = "Midlands Province";
  String description = "Lorem ipsum  is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Farm Display" , style: TextStyle(color: Colors.black),),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(padding: EdgeInsets.all(10.0), child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: NetworkImage(url)),
            SizedBox(height: MediaQuery.of(context).size.height/40,),
            Row(
              children: [
                Expanded(child: Text("Farm Name:  $name" )),
                Expanded(child: Text("Province: $province"))
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/10,),
            Text(description),
            SizedBox(height: MediaQuery.of(context).size.height/10,),
            Row(
              children: [
                Expanded(
                    child: Column(children: [
                      IconButton(
                          icon: Icon(Icons.quick_contacts_dialer_outlined),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Calling or sending message"),));
                          }
                      ),
                      Text("Contact Farm")
                    ],)
                ),
                Expanded(
                    child: Column(children: [
                      IconButton(
                          icon: Icon(Icons.cloud),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Going to site"),));
                          }
                      ),
                      Text("Visit Website")
                    ],)
                ),
              ],
            )
          ],
        ),
      ),),
    );
  }
}
