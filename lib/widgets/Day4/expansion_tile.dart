import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatelessWidget {
  const ExpansionTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Expansion Tile Widget"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ExpansionTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://th.bing.com/th/id/OIP.X4fqVkn_Sp-EvETZP843vQAAAA?rs=1&pid=ImgDetMain"),
                  ),
                  title: Text("this is Expansion widget"),
                  children: [
                    Text(
                        "✅ SafeArea: Protects your content from system UI elements like notches and status bars")
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
