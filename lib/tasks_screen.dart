import 'package:flutter/material.dart';
import 'add_task_screen.dart';
import 'task.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {

  List<Task> _tasks=[

    Task (name:'Learn Flutter'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor:Colors.lightBlueAccent,
        child:Icon(Icons.add, color:Colors.white,),
        onPressed:(){
          //Assignment1 Extra Task
          //Comment out to see
         // _showDialogBox(context);

          showModalBottomSheet(
            context:context,
            isScrollControlled:true,
            builder:(context) => SingleChildScrollView(
              child:Container(


                padding:EdgeInsets.only(
                  bottom:MediaQuery.of(context).viewInsets.bottom,

                ),//EdgeInsets

                child:AddTaskScreen(
                  onAddTask:(newTask) {
                    setState(() {
                      _tasks.add(Task(name: newTask));
                    });
                  },

                ),//ADD TASK SCREEN

              ),//Container

            ),//SingleChildScrollView

          );

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
                Text("${_tasks.length} Tasks",
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
            //Assignment 1
            decoration:BoxDecoration(
           color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft:Radius.circular(22.0),
                topRight:Radius.circular(22.0),
              )
            ),
            //Assignment2
            child:ListView.builder(
              itemCount: _tasks.length,
              itemBuilder: (context, index) {
                var task = _tasks[index];

                return ListTile(
                  title: Text(
                    _tasks[index].name,
                    //Assignment2
                    style: task.isDone
                        ? TextStyle(
                      decorationThickness: 2.20,
                      decoration: TextDecoration.lineThrough,
                    )
                        : TextStyle(),
                  ),
                  trailing: Checkbox(
                    value: task.isDone,
                    onChanged: (value) {
                      setState(() {
                        task.isDone = value!;
                      });
                    },
                  ),
                );
              },
            )

          ),//container
          )

        ],
      ),//Column
    );//Scaffold


  }

}






//Assignment1
/*
void _showDialogBox(BuildContext context)
{
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(

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
*/