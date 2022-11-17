import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SnackBarClass()
    );
  }
}

class SnackBarClass extends StatefulWidget {
  const SnackBarClass({Key? key}) : super(key: key);

  @override
  State<SnackBarClass> createState() => _SnackBarClassState();
}

class _SnackBarClassState extends State<SnackBarClass> {


  //...........................method for the Snackbar ............................

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message,style: TextStyle(fontSize: 20),),
      backgroundColor: Colors.purpleAccent,
      elevation: 8,
      //duration: Duration(seconds: 5),
      action: SnackBarAction(
        textColor: Colors.white,
        label: 'ok',
        onPressed: () {  },

      ),

    ));
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        //centerTitle: true,
        title: Text('Snackbar'),
        actions: [
          IconButton(
              onPressed: (){
                MySnackBar('Love Icon is clicked',context);
              },
              icon: Icon(Icons.favorite)),
          IconButton(
              onPressed: (){
                MySnackBar('Delete Icon is clicked',context);
              },
              icon: Icon(Icons.delete)),
          IconButton(
              onPressed: (){
                MySnackBar('Save Icon is clicked',context);
              },
              icon: Icon(Icons.save))
        ],
      ),
    );
  }
}









