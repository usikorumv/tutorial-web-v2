// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class TabWithDivider extends StatelessWidget {
  const TabWithDivider({Key? key, this.title, this.isSeparator})
      : super(key: key);

  final String? title;
  final bool? isSeparator;

  @override
  Widget build(BuildContext context) {
    String _title = title ?? "Tab";
    bool _isSeparator = isSeparator ?? true;

    return Tab(
      child: Container(
        height: 27,
        decoration: _isSeparator
            ? const BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Colors.grey,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
              )
            : null,
        child: Center(
          child: Text(_title),
        ),
      ),
    );
  }
}
