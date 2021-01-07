import 'package:flutter/material.dart';

class CmTextInput extends StatefulWidget {
  final EdgeInsets outerPadding;
  final String titleText;
  final void Function(String) onChanged;
  final String hintText;
  final int minLines;
  final int maxLines;
  final bool obscureText;
  final TextEditingController controller;
  final double height;
  final String errorText;
  final String presetValue;
  final Widget suffixIcon;

  CmTextInput({
    this.outerPadding: const EdgeInsets.all(0),
    this.titleText,
    this.onChanged,
    this.hintText,
    this.minLines: 1,
    this.maxLines: 1,
    this.obscureText: false,
    this.controller,
    this.height: 32,
    this.errorText,
    this.presetValue,
    this.suffixIcon,
  });

  @override
  State<StatefulWidget> createState() => CmTextInputState();
}

class CmTextInputState extends State<CmTextInput> {
  String _currentText;
  bool _isObscured;
  Color _labelColor;
  TextEditingController _controller;

  @override
  void initState() {
    _isObscured = widget.obscureText;
    _labelColor = Colors.blueAccent;
    _controller = widget.controller ?? TextEditingController();
    if (widget.presetValue != null) {
      _controller.text = widget.presetValue;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: widget.outerPadding,
      child: TextField(
        controller: _controller,
        onChanged: (text) {
          _currentText = text;
          widget.onChanged(_currentText);
        },
        expands: (widget.minLines == null && widget.maxLines == null),
        minLines: widget.minLines,
        maxLines: widget.maxLines,
        obscureText: _isObscured,
        style: TextStyle(
          color: theme.primaryColor,
          fontSize: theme.textTheme.bodyText2.fontSize,
        ),
        decoration: InputDecoration(
          suffixIcon: widget.suffixIcon != null
              ? widget.suffixIcon
              : (widget.obscureText
                  ? GestureDetector(
                      onTap: () => setState(() => _isObscured = !_isObscured),
                      child: Icon(
                        _isObscured ? Icons.visibility : Icons.visibility_off,
                        color: theme.highlightColor,
                      ))
                  : SizedBox.shrink()),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: theme.accentColor),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: theme.errorColor),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          filled: true,
          fillColor: theme.canvasColor,
          labelText: widget.titleText,
          labelStyle: TextStyle(
            color: widget.errorText == null ? _labelColor : theme.errorColor,
          ),
          errorText: widget.errorText,
          errorStyle: TextStyle(
            color: theme.errorColor,
          ),
        ),
      ),
    );
  }
}
