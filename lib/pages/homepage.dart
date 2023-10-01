import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v/pages/joinWithCode.dart';
import 'package:v/pages/new_meeting.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vedio Conference"),
        centerTitle: true,
      ),

      body: Column(

        children: [

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 80, 0, 20),

            child: ElevatedButton.icon(onPressed: (){
              Get.to(NewMeeting());
            },
              icon: Icon(Icons.add),
              label: Text("New Meeting"),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 60),

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                  )
              ),),

          ),
          Divider(thickness: 1,height: 0,indent: 40,endIndent: 40,),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
            child: OutlinedButton.icon(onPressed: (){
              Get.to(joinWithCode());
            },
              icon: Icon(Icons.margin),
              label: Text("Join with a code"),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 60),
                  //primary: Colors.indigo,
                  side: BorderSide(color: Colors.indigo),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                  )
              ),
            ),
          ),
          SizedBox(height: 100,),
          Image.network("https://img.freepik.com/free-vector/online-learning-concept-illustration_114360-4415.jpg?w=740&t=st=1695533247~exp=1695533847~hmac=93322c01b02bd11c9c3e4475543aebbd17b6376c2dae1c27deca61a7a1c7e15e")
        ],
      ),
    );
  }
}
