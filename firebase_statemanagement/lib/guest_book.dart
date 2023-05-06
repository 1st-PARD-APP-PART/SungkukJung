import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'src/widgets.dart';
import 'guest_book_message.dart';

class GuestBook extends StatefulWidget {
  // Modify the following line:
  const GuestBook({
    super.key,
    required this.addMessage,
    required this.messages,
    required this.deleteMessage,
  });

  final FutureOr<void> Function(String message) addMessage;
  final List<GuestBookMessage> messages; // new
  final FutureOr<void> Function(String message) deleteMessage;

  @override
  _GuestBookState createState() => _GuestBookState();
}

class _GuestBookState extends State<GuestBook> {
  final _formKey = GlobalKey<FormState>(debugLabel: '_GuestBookState');
  final _controller = TextEditingController();

  @override
  // Modify from here...
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ...to here.
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Leave a message',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your message to continue';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(width: 8),
                StyledButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await widget.addMessage(_controller.text);
                      _controller.clear();
                    }
                  },
                  child: Row(
                    children: const [
                      Icon(Icons.send),
                      SizedBox(width: 4),
                      Text('SEND'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // Modify from here...
        const SizedBox(height: 8),
        for (var message in widget.messages)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Paragraph('${message.name}: ${message.message}'),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        DateFormat.yMd().add_jms().format(
                            DateTime.fromMillisecondsSinceEpoch(
                                message.timestamp)),
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () => widget.deleteMessage(message.id),
                icon: const Icon(Icons.delete_outlined),
              ),
            ],
          ),

        const SizedBox(height: 8),
      ],
      // ...to here.
    );
  }
}
