// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'header.dart';
import 'contacts.dart';

class Base extends StatefulWidget {
  const Base({Key? key, this.content, this.showContacts}) : super(key: key);

  final List<Widget>? content;
  final bool? showContacts;

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  final scrollDirection = Axis.vertical;

  late AutoScrollController controller;

  @override
  void initState() {
    super.initState();

    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: scrollDirection);
  }

  @override
  Widget build(BuildContext context) {
    bool _showContacts = widget.showContacts ?? true;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Header(
            onTabClicked: (index) {
              _scrollToIndex(index);
            },
          ),
          Expanded(
            child: ListView(
              controller: controller,
              scrollDirection: scrollDirection,
              shrinkWrap: true,
              children: [
                ...getContent(widget.content),
                wrapWithAutoScrollTag(
                  _showContacts ? const Contacts() : const SizedBox(),
                  widget.content!.length,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _scrollToIndex(int index) async {
    await controller.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
  }

  getContent(List<Widget>? content) {
    if (content == null) return <Widget>[];

    return <Widget>[
      ...List.generate(
        content.length,
        (index) => wrapWithAutoScrollTag(content[index], index),
      ),
    ];
  }

  wrapWithAutoScrollTag(Widget widget, int index) => AutoScrollTag(
        key: ValueKey(index),
        controller: controller,
        index: index,
        child: widget,
      );
}
