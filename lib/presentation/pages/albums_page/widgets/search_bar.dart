import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final String hint;
  final void Function(String value) onSubmit;

  const SearchBar({
    Key? key,
    this.hint = 'Search',
    required this.onSubmit,
  }) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String value = '';

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: widget.hint,
        border: const OutlineInputBorder(),
      ),
      onChanged: (value) => setState(() {
        this.value = value;
      }),
      onEditingComplete: () {
        widget.onSubmit(value);
        FocusScope.of(context).unfocus();
      },
    );
  }
}
