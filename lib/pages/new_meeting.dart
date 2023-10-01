import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:v/pages/video_call.dart';

class NewMeeting extends StatelessWidget {
  const NewMeeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                child: Icon(Icons.arrow_back_ios_new_sharp,size: 40,),
                onTap: Get.back,
              ),
            ),
            SizedBox(height: 50,),
            Image.network("https://cdn.dribbble.com/users/796781/screenshots/4968624/media/a957d2fda297b0ab02bc8760003ab8d5.png",
              fit: BoxFit.cover,
              height: 100,),
            SizedBox(height: 30,),
            Text("your meeting is Ready",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: Card(

                elevation: 5,
                color: Colors.grey[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ListTile(
                  leading: Icon(Icons.link),
                  title: SelectableText(
                    "354295",
                    style: TextStyle(
                      fontWeight: FontWeight.w300

                    ),
                  ),
                  trailing: Icon(Icons.copy),
                )
              ),
            ),

            Divider(thickness: 1,height: 40,indent: 20,endIndent: 20,),


            ElevatedButton.icon(onPressed: (){

            },
              icon: Icon(Icons.arrow_drop_down),
              label: Text("Share Invite"),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 60),

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                  )
              ),),

            SizedBox(height: 20,),
            OutlinedButton.icon(onPressed: (){
              Get.to(VideoCall());
            },
              icon: Icon(Icons.videocam),
              label: Text("Start Call"),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(350, 60),
                  //primary: Colors.indigo,
                  side: BorderSide(color: Colors.indigo),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                  )
              ),
            ),

          ],
        ),
      ),
    );
  }
}

