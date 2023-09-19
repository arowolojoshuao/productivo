/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:productivo/pages/upload_file.dart';
import '../components/styles.dart';

class FileScreen extends StatefulWidget {
  static const String id = 'FileScreen';

  const FileScreen({Key? key}) : super(key: key);

  @override
  _FileScreenState createState() => _FileScreenState();
}

class _FileScreenState extends State<FileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: appColor,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          "Files",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UploadFile()));
                },
                icon: Icon(
                  Icons.file_upload_outlined,
                  color: appColor,
                  size: 18,
                ),
              ),
            ),
          )
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              color: Colors.white,
              child: Stack(
                children: [
                  Column(
                    children: [
                      _buildHeader(),
                      SizedBox(height: 16),
                      _buildFolder(Icons.folder, "Documents"),
                      _buildFolder(Icons.folder, "Pictures"),
                      _buildFolder(Icons.folder, "Videos"),
                      _buildFileDtl(Icons.file_copy, 'Logo Porject.txt',
                          '50 Notes · Today. 12.00'),
                      _buildFileDtl(Icons.file_copy, 'Logo Porject.txt',
                          '50 Notes · Today. 12.00')
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      color: appColor,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: const TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            border: InputBorder.none,
            hintText: "Search Files",
            hintStyle: TextStyle(fontSize: 16, color: Colors.black26),
            suffixIcon: SizedBox(
                width: 50, child: Icon(Icons.search, color: Colors.black26)),
          ),
        ),
      ),
    );
  }

  Widget _buildFolder(icn, txt) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.black12),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icn,
            color: appColor,
          ),
          SizedBox(width: 16),
          Text(
            txt,
            style: TextStyle(
              fontFamily: 'medium',
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFileDtl(icn, title, txt) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.black12),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icn,
            color: Colors.black26,
          ),
          SizedBox(width: 16),
          Column(
            children: [
              Text(title,
                  style: TextStyle(
                    fontFamily: 'medium',
                    fontSize: 16,
                    color: Colors.black54,
                  )),
              SizedBox(height: 6),
              Text(txt,
                  style: TextStyle(
                    fontFamily: 'medium',
                    fontSize: 10,
                    color: Colors.black54,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
