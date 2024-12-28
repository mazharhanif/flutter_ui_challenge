import 'package:flutter/material.dart';

class MaterialBannerWidget extends StatelessWidget {
  const MaterialBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("How we show the material banner?"),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showMaterialBanner(
                      MaterialBanner(
                          content: Text("this is a material banner"),
                          actions: [
                        TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .clearMaterialBanners();
                          },
                          child: Text("Dismise"),
                        )
                      ]));
                },
                child: Text("Material banner"))
          ],
        ),
      ),
    );
  }
}
