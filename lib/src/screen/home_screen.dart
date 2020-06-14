import 'package:flutter/cupertino.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _colores = Color.fromARGB(255, 128, 128, 128);

  void _colorVerde() {
    setState(() {
     _colores = Color.fromARGB(255, 143, 188, 143);
    });
  }
  
  void _colorAzul() {
    setState(() {
     _colores = Color.fromARGB(255, 30, 144, 255);
    });
  }

  void _colorAmarillo() {
    setState(() {
     _colores = Color.fromARGB(255, 255, 215, 0);
    });
  }
  
  @override
  Widget build(BuildContext context) {

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title)
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Cambia el color del texto!!', 
            style: TextStyle(color: _colores, 
                            fontWeight: FontWeight.bold, 
                            fontSize: 25.0, 
                            decoration: TextDecoration.none),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CupertinoButton.filled(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text('Verde'), 
                  onPressed:(){
                    _colorVerde();

                  }),
                 CupertinoButton.filled(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text('Azul'), 
                  onPressed:(){
                    _colorAzul();
                    
                  }),
                  CupertinoButton.filled(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text('Amarillo'), 
                  onPressed:(){
                    _colorAmarillo();
                    
                  })  
              ],

            )
          ],
        ),
        
      )
    );
  }
}