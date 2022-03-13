import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  void _showDialogBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {},
                child: const Text('Record Audio'),
              ),
              SimpleDialogOption(
                onPressed: () {},
                child: const Text('Upload Audio'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload'),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.upload_file),
          onPressed: () {
            _showDialogBox(context);
          },
        ),
      ),
    );
  }
}
