import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoContextMenuWidget extends StatelessWidget {
  const CupertinoContextMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoContextMenu(
        
        actions: [
          CupertinoContextMenuAction(child: Text("Action one"),onPressed: ()=>Navigator.pop(context),),
          CupertinoContextMenuAction(child: Text("Action Two"), onPressed: ()=>Navigator.pop(context)),
        ],
        child: Image.network(
            "https://media3.giphy.com/media/ll7LY2ievIBdRBcPOZ/source.gif"),
      ),
    );
  }
}
