import 'package:clone_webtoon/shared/util/const.dart';
import 'package:flutter/material.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  int coin_number = 0;
  bool isUnlocked = false;

  bool showChapter = false;
  bool showBuyCoinsDialog = false;
  bool hasUnlocked = false;
  String? text;

  @override
  Widget build(BuildContext context) {
    if (coin_number < 5) {
      text = "Go to Coins Shop!";
    } else {
      coin_number -= 5;
    }
    if (coin_number < 5 && hasUnlocked == true) {
      showBuyCoinsDialog = true;
    }
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              bool confirm = false;
              await showDialog<void>(
                context: context,
                barrierDismissible: true,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                            width: 200,
                            child: Center(
                              child: Text(
                                'Use Coins to unlock this episode!',
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ],
                    ),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: const <Widget>[
                          Text('To unlock this chapter, you need 5 Coins.'),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Cancel"),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                        ),
                        onPressed: () {
                          confirm = true;
                          Navigator.pop(context);
                        },
                        child: Text(
                          "$text",
                          style: const TextStyle(color: secondaryColor),
                        ),
                      ),
                    ],
                  );
                },
              );

              if (confirm) {
                print("Confirmed!");
              }
            },
            child: Container(
              child: const Text("show dialog"),
            )),
      ),
    );
  }
}
