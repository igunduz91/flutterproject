import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var paraf = "";

  @override
  Widget build(BuildContext context) {
    var title = "Başlıık";

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              padding: const EdgeInsets.all(10.0),
              child: Text(
                (paraf == "") ? "İçi şu an boş" : paraf,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              ),
            ),
            TextButton(
                onPressed: () {
                  paraf = "İlk Parağrafım";

                  setState(() {});
                },
                child: const Text("button",
                style: TextStyle(color: Colors.blue, fontSize: 30, fontWeight: FontWeight.w300),)),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
