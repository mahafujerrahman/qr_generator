import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, this.qrString});
final qrString;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code APP',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();}
  TextEditingController _editingController =TextEditingController(text: "");


class _HomePageState extends State<HomePage> {
  String data = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar (title: Text(  "Generating QR-Code in a Flutter App")),


      body: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Type here",
                  contentPadding: EdgeInsets.all(10)),
                   controller: _editingController,
            ),
            ElevatedButton(
              child: Text('Generate Your Own QR-Code'),
              style: ElevatedButton.styleFrom(),
              onPressed: () {},

            ),
            QrImageView(
              data: data,
              version: QrVersions.auto,
              size: 320,
              gapless: false,
            )

          ],
        ),
      ),
    )


    );

  }
}
