import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_quill/flutter_quill.dart';

class EventDescriptionV extends StatefulWidget {
  final String descriptionQuill;

  const EventDescriptionV({
    required this.descriptionQuill,
    Key? key,
  }) : super(key: key);

  @override
  State<EventDescriptionV> createState() => _EventDescriptionVState();
}

class _EventDescriptionVState extends State<EventDescriptionV> {
  final _quillController = QuillController.basic();
  final _focusNode = FocusNode();
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    Document document;

    try {
      final result = jsonDecode(widget.descriptionQuill);
      document = Document.fromJson(
        result['ops'] as List,
      );
    } catch (e) {
      document = Document();
    }

    _quillController.document = document;
    _quillController.readOnly = true;
  }

  @override
  void dispose() {
    _quillController.dispose();
    _focusNode.dispose();
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return QuillEditor.basic(
      focusNode: _focusNode,
      configurations: QuillEditorConfigurations(
        controller: _quillController,
        showCursor: false,
        floatingCursorDisabled: true,
      ),
      scrollController: _scrollController,
    );
  }
}
