import 'package:flutter/material.dart';
import 'package:graphic_template/pa_marketing/browsingGraphic/farm.dart';

class Browser extends StatelessWidget {
  String name = "Bennet Farms";
  String province = "Midlands Province";
  String url = "https://images.squarespace-cdn.com/content/59765fd317bffcafaf5ff75c/1579455528721-Z1U2Y9VAO75ZX223QQUF/AR-200119620.jpg?content-type=image%2Fjpeg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Browser Graphic" , style: TextStyle(color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            drawFarmCard(url, name, province, context),

          ],
        ),
      ),),
    );
  }

  Widget drawFarmCard(String url , String name, String province, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: [
            Image(image: NetworkImage(url)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Text(name)),
                Expanded(child: Text(province))
              ],
            ),
            RaisedButton(
                onPressed: () {
                  //go to the farm page
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> FarmDisplay()));
                },
              child: Text("View"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              )
            )
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0)
        ),
      ),
    );
  }//end draw farm card
}
