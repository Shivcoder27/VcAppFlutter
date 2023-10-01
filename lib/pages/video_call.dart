import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class VideoCall extends StatelessWidget {

 final AgoraClient _client = AgoraClient(
     agoraConnectionData: AgoraConnectionData(
      appId: "4a669dd59c734bff99de3123340a63cb",
      tempToken: "007eJxTYEg/LXbyE+OKXW+y9/StWHIjmPfcUoZbMoZJaavmbhfUqP+swGCSaGZmmZJiaplsbmySlJZmaZmSamxoZGxsYpBoZpyc5PdTIrUhkJEhwlyTlZEBAkF8HoayzJTU/JLU4pLMvHQGBgCnlCLq",
      channelName: "videotesting"


 ),
 enabledPermission: [

  Permission.camera,
     Permission.microphone,

     ]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: Stack(children: [AgoraVideoViewer(client: _client,),
       AgoraVideoButtons(client: _client),],),
     ),
    );
  }
}
