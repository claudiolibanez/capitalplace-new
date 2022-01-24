import 'package:flutter/material.dart';

// widgets
import 'package:capitalplace/app/core/widgets/input_widget.dart';

class PinNumberWidget extends StatelessWidget {
  final TextEditingController? textEditingController;
  final TextInputAction? textInputAction;
  final void Function(String focus)? onFieldSubmitted;
  final FocusNode? focusNode;

  const PinNumberWidget({
    Key? key,
    this.textEditingController,
    this.textInputAction,
    this.onFieldSubmitted,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.0,
      child: InputWidget(
        textEditingController: textEditingController,
        maxLength: 1,
        textInputAction: textInputAction,
        keyboardType: TextInputType.number,
        onFieldSubmitted: onFieldSubmitted,
        focusNode: focusNode,
      ),
    );
  }
}
