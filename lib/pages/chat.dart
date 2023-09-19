/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart';

class Chat extends StatefulWidget {
  static const String id = 'Chat';

  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<Item> messages = <Item>[
    const Item('left', 'Hello'),
    const Item('right', 'Hii'),
    const Item('left', 'Are you busy ?'),
    const Item('right', 'Yes, I am very busy.'),
    const Item('left', 'Ok, Can you help me for new Project'),
    const Item('right', 'No, I dont wanna help you, I said I am very Busy.'),
    const Item('left', 'Okay, Thank you very much for your time'),
    const Item('left', 'Hello'),
    const Item('right', 'Hii'),
    const Item('left', 'Are you busy ?'),
    const Item('right', 'Yes, I am very busy.'),
    const Item('left', 'Ok, Can you help me for new Project'),
    const Item('right', 'No, I dont wanna help you, I said I am very Busy.'),
    const Item('left', 'Okay, Thank you very much for your time'),
  ];
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
          "John Snowborn",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildFooter(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: messages.map((Item msg) {
            return msg.side == 'left'
                ? Container(
                    margin: const EdgeInsets.only(bottom: 24),
                    width: MediaQuery.of(context).size.width - 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/man.png'),
                          radius: 16,
                        ),
                        Flexible(
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: backgroundColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Text(
                              msg.msg,
                              style: const TextStyle(
                                  fontSize: 16, fontFamily: "medium"),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(bottom: 24),
                        width: MediaQuery.of(context).size.width - 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Flexible(
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    color: appColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Text(
                                  msg.msg,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: "medium"),
                                ),
                              ),
                            ),
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/man.png'),
                              radius: 16,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
          }).toList(),
        ));
  }

  Widget _buildFooter() {
    return Container(
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(width: 1, color: Colors.black12))),
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black12),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: <Widget>[
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Write Message..'),
              ),
            ),
            InkWell(
              child: Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                    color: appColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    )),
                child: const Icon(
                  Icons.near_me,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Item {
  const Item(this.side, this.msg);
  final String side;
  final String msg;
}
