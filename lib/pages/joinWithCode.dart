import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v/pages/video_call.dart';

class joinWithCode extends StatelessWidget {

  TextEditingController _controller = TextEditingController();

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
            Image.network("https://cdn.dribbble.com/users/788099/screenshots/7855319/media/58af246b3f1485afe7ea43cdc41f08c0.png",
            fit: BoxFit.cover,
            height: 100,),
            SizedBox(height: 30,),
            Text("Enter Meeting Code Below",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
              child: Card(

                elevation: 5,
                color: Colors.grey[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  controller: _controller ,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Example: abc-efg-dhi"
                  ),
                ),
              ),
            ),



            ElevatedButton(onPressed: (){
              Get.to(VideoCall());
            },

              child: Text("join"),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(60, 80),

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                  )
              ),),
          ],
        ),
      ),
    );
  }
}
