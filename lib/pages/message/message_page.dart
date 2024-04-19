import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mentalhealthapp/utils/message_receiver.dart';
import 'package:mentalhealthapp/utils/message_sender.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            // HEADER USER INFOS
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ICONS BACK
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  // USER INFOS
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Bobby Singer',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        'Online',
                        style: TextStyle(
                          color: Colors.blue[200],
                        ),
                      ),
                    ],
                  ),
                  // CALLING ICON
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: const Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15.0),
            // MESSAGE CONTAINER
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      // LISTVIEW OF MESSAGES
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 20.0, right: 20.0, bottom: 10.0),
                          child: ListView(
                            children: [
                              MessageReceiver(
                                message: 'Hi Jeremi, how are you ❓',
                                colorMessageBox: Colors.grey[300],
                                textMessageColor: Colors.black,
                              ),
                              MessageSender(
                                message: "I'm good thanks, How about you ?",
                                colorMessageBox: Colors.blue[600],
                                textMessageColor: Colors.white,
                              ),
                              MessageSender(
                                message: "Long time no see 😊",
                                colorMessageBox: Colors.blue[600],
                                textMessageColor: Colors.white,
                              ),
                              MessageReceiver(
                                message:
                                    "Really ! i have a couple of things to do that's why i'm lost ",
                                colorMessageBox: Colors.grey[300],
                                textMessageColor: Colors.black,
                              ),
                              MessageSender(
                                message: "Aah okay i see now 😇",
                                colorMessageBox: Colors.blue[600],
                                textMessageColor: Colors.white,
                              ),
                              MessageReceiver(
                                message: 'The new ? where are you ?',
                                colorMessageBox: Colors.grey[300],
                                textMessageColor: Colors.black,
                              ),
                              MessageSender(
                                message: "New York",
                                colorMessageBox: Colors.blue[600],
                                textMessageColor: Colors.white,
                              ),
                              MessageReceiver(
                                message: "In fact, it was beeing a long time",
                                colorMessageBox: Colors.grey[300],
                                textMessageColor: Colors.black,
                              ),
                              MessageSender(
                                message:
                                    "Since University i didn't see you anymore 😅😅😅",
                                colorMessageBox: Colors.blue[600],
                                textMessageColor: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),

                      // BOTTOM INPUT SECTION
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, bottom: 10.0),
                        child: Row(
                          children: [
                            // INPUT MESSAGE
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, top: 5, right: 15, bottom: 5),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          keyboardType: TextInputType.multiline,
                                          maxLines: null,
                                          decoration: InputDecoration(
                                            hintText: 'write a message...',
                                            border: InputBorder.none,
                                            hintStyle: TextStyle(
                                              color: Colors.grey[800],
                                            ),
                                          ),
                                        ),
                                      ),
                                      // GALERIE ICON
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.image_outlined),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15.0),
                            Container(
                              padding: const EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: Colors.blue[800],
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: const Icon(
                                Icons.send,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
