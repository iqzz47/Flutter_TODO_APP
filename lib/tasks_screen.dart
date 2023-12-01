import 'package:flutter/material.dart';
class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor:Colors.lightBlueAccent,
        child:Icon(Icons.add, color:Colors.white,),
        onPressed:(){
          _showDialogBox(context);
        },
      ),//button
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          Container(
            padding: EdgeInsets.only(
              top: 60.0, left: 30.0, right: 30.0, bottom: 30.0
            ),
            child:Column(
              crossAxisAlignment:  CrossAxisAlignment.start,
              children:[
                CircleAvatar(
                  radius:30,
                  backgroundImage: AssetImage("assets/images/img.jpg"),
                ),//Circle
                SizedBox(height:10),

                Text(
                  "Jannat Un Nayeem Iqra",
                style:TextStyle(

                    color:Colors.white,
                    fontSize:17.0,
                    fontWeight:FontWeight.w700,
                ),
                ),
                Text("iqra36687@gmail.com",
                  style:TextStyle(

                  color:Colors.white,
                  fontSize:17.0,

                ),),
                SizedBox(height:24),
                Text("My Tasks",
                  style:TextStyle(

                  color:Colors.white,
                  fontSize:32.0,
                  fontWeight:FontWeight.w700,
                ),
                ),
                Text("3 Tasks",
                style:TextStyle(

                color:Colors.white,
                fontSize:18.0,

               ),),

              ],
            ),
          ),//container
          Expanded(
          child:Container(

            padding: EdgeInsets.symmetric(horizontal: 20.0),
            //height:100,
            decoration:BoxDecoration(
           color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft:Radius.circular(22.0),
                topRight:Radius.circular(22.0),
              )
            ),
          ),//container
          )

        ],
      ),//Column
    );//Scaffold


  }

}


void _showDialogBox(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 190.0,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children:[

            Text(

              'Add Task',

          style:TextStyle(

            color:Colors.blue,
            fontSize:30.0,

          ),


            ),
            SizedBox(height: 30.0),

            const Divider(
              color: Colors.blue,
              height: 20,
              thickness: 1,
              indent: 5,
              endIndent: 5,
            ),
            SizedBox(height: 10.0),
SizedBox(
  width:400.0,
           child: ElevatedButton(

              onPressed: () {
                Navigator.pop(context); // Close the bottom sheet
              },
              child: Text('ADD',
                style:TextStyle(

                color:Colors.white,
                fontSize:17.0,

              ),),


              style:OutlinedButton.styleFrom(
                backgroundColor:Colors.lightBlueAccent,

                shape: RoundedRectangleBorder(

                  borderRadius:BorderRadius.circular(8),
                ),
              ),
            ),
      )
          ],
        ),
      );
    },
  );
}
