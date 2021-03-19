import 'package:ex_enviar_mensagens/model/person.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(MyApp());
}

//Toast
//SnackBar
//AlertDialog


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter - msg'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text('aaa')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('Enviou Mensagem');

          final person = Person();
          person.name = "Luiz";
          person.lastname = "Souza";
          person.age = 18;

          // _toast('Luiz');
          // _snack('Coé');
          // _snack('Boraaa');
         // _showAlert('Você clicou no alert... sim ou não?!', yesButton: 'Yes Sir/Miss', noButton: 'Oh nooo!');
          _showAlert('${person.toString()}', yesButton: 'Yes Sir/Miss', noButton: 'Oh nooo!');
        },
        tooltip: '....',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  _showAlert(String message, {String title, String yesButton, String noButton}) {
    AlertDialog alert = AlertDialog(
      title: Text(title ?? 'Atenção'),
      content: Text(message),
      actions: [
        TextButton(onPressed: () {
          print('Clicou no sim');
          Navigator.of(context).pop();
        }, child: Text(yesButton ?? 'Sim')),
      //     TextButton(onPressed: () {
      //   print('Clicou no Não');
      //   Navigator.of(context).pop();
      // }, child: Text(noButton ?? 'Não')),

      ],
    );

    showDialog(context: context, builder: (BuildContext context){
      return alert;
    });
  }

  // void _snack(String message){
  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message),));
  // }

  // void _toast(String message) {
  //   Toast.show(message, context, duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
  // }


}
