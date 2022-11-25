


import 'package:flutter/material.dart';
import 'package:task_2_drawer_alert_dialogue/utls/snackbar_messege.dart';

MyAlertDialogue(context){

  return showDialog(
      context: context,
      builder:(BuildContext context){
       return Expanded(
           child:AlertDialog(
             elevation: 3,
             backgroundColor: Colors.white,
             title: Text('Alert !',style: TextStyle(color: Colors.red),),
             content: Text('Do you want to delete ?'),
             actions: [
               TextButton(onPressed: (){
                 MySnackBar('Delete Success', context);
                 Navigator.pop(context);
               }, child: Text('Yes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
               TextButton(onPressed: (){Navigator.pop(context);}, child: Text('No',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
             ],
           )
       );
      }
  );


}