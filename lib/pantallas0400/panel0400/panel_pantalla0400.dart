import 'package:flutter/material.dart';
import 'package:vega0400/pantallas0400/panel0400/item_dulces0400.dart';

class PanelPantalla0400 extends StatelessWidget {
  const PanelPantalla0400({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffd99d3),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 25),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/VegaTapiaGemaKarina/img_iOS/main/logo.jpg"),
            ),
          ),
        ],
        title: const Text('Dulceria Vega0400',
            style: TextStyle(color: Color(0xffffffff))),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Color(0xff8bb4ff),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      color:
                          Theme.of(context).colorScheme.primary.withOpacity(0),
                      spreadRadius: 5,
                      blurRadius: 5)
                ]),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Que quieres ver",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Color(0xffffffff)),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: Color(0xff0079fb))),
            ),
          ),
          Container(
            height: 180,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/VegaTapiaGemaKarina/img_iOS/main/Zproducto.jpg"))),
          ),
          ListTile(
            title: Text("Productos"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: Icon(Icons.filter_list_off_outlined),
          ),
          Expanded(
              child: GridView.count(
            padding: EdgeInsets.all(15),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            children: [for (int i = 1; i <= 10; i++) const Itemdulces()],
          ))
        ],
      ),
    );
    ;
  }
}
