import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Centimetros a Pulgadas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Conversor(title: 'Convertidor de CM a In'),
    );
  }
}

class Conversor extends StatefulWidget {
  Conversor({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ConversorState createState() => _ConversorState();
}

class _ConversorState extends State<Conversor> {
  var _output='0.0';

  final inputController=TextEditingController();

  void _calculateTemp(){
    setState(() {
      double MedidiaOriginal= double.parse(inputController.text);
      double MedidaSalidaSalida=MedidiaOriginal/2.54;
      _output="$MedidaSalidaSalida";
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //Una barra donde ponemos el titulo
        title:Center (
          child:Text(widget.title),
        )
           //Donde escribimos el titulo
      ),

      body: Center(

        child: Form(


          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,//Body donde ponemos multiples de cosas
            children: [

              TextFormField(
                controller: inputController,




              ),

              RaisedButton(
                onPressed: () {
                  _calculateTemp();

                },
                child: Text('Convertir'),
                color: Colors.red,
              ),
              Text('$_output'),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white12,
    );
  }
}