import 'package:flutter/material.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding:const EdgeInsets.only(
        top:100.0,
      ),
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("사진 업로드"),
            leading: IconButton(
              icon: const Icon(Icons.cancel),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.save),
                onPressed:() {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          body: Container(
            color: Colors.white,
            child: Center(
              child: Column(
                  children: [
                    Container(
                      width:300.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          width: 0.5,
                          color: const Color(0xFFAAAAAA),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.upload,
                            size: 50.0,
                          ),
                          Text("포켓몬 사진 업로드"),
                        ],
                      ),
                    ),
                  ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
