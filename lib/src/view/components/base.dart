import 'package:flutter/material.dart';

import 'header.dart';
import 'contacts.dart';

class Base extends StatelessWidget {
  const Base({Key? key, this.pageHeight, this.content, this.showContacts})
      : super(key: key);

  final double? pageHeight;
  final List<Widget>? content;
  final bool? showContacts;

  @override
  Widget build(BuildContext context) {
    bool _showContacts = showContacts ?? true;
    double _pageHeight = pageHeight != null ? pageHeight! - 100 : 1900;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const Header(),
          Expanded(
            child: SingleChildScrollView(
              child: SizedBox(
                height: _pageHeight,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...?content,
                    const Spacer(),
                    _showContacts ? const Contacts() : const SizedBox(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
