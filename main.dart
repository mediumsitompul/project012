import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: const Center(child: Text('URL_LAUNCHER\n(Go to web site)')),),
      body: MyProject(),
      ),
    );
  }
}




class MyProject extends StatefulWidget {
  MyProject({Key? key}) : super(key: key);

  @override
  State<MyProject> createState() => _MyProjectState();
}

final Uri _url = Uri.parse('https://detik.com');

class _MyProjectState extends State<MyProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(onPressed: (){_launchUrl();}, child: const Center(child: Text('Click, Go to detik.com'))),
    );
  }
}

Future<void> _launchUrl() async {
  if(!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
