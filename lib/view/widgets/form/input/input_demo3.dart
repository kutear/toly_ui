import 'package:flutter/material.dart';
import 'package:toly_ui/view/widgets/display_nodes/display_nodes.dart';

@DisplayNode(
  title: '组合输入框',
  desc: '可以通过 Wrap/Row 等组件，组合输入框和其他组件。如下：前置标签',
)
class InputDemo3 extends StatelessWidget {
  const InputDemo3({super.key});

  @override
  Widget build(BuildContext context) {
    double height = 32;
    TextStyle style = const TextStyle(fontSize: 14, height: 1);
    double borderWidth = 1;
    Color focusedColor = Colors.blue;
    Color unFocusedColor = const Color(0xffd9d9d9);
    OutlineInputBorder focusedBorder = OutlineInputBorder(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(4),
          bottomRight: Radius.circular(4),
        ),
        borderSide: BorderSide(color: focusedColor, width: borderWidth));
    OutlineInputBorder border = OutlineInputBorder(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(4),
          topRight: Radius.circular(4),
        ),
        borderSide: BorderSide(color: unFocusedColor, width: borderWidth));
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 32,
          // width: 70,
          padding: const EdgeInsets.symmetric(horizontal: 12),

          child: const Center(
              child: Text(
            'Http://',
            style: TextStyle(color: Color(0xff909399), fontSize: 14),
          )),
          decoration: BoxDecoration(
              color: const Color(0xfff5f7fa),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4),
                bottomLeft: Radius.circular(4),
              ),
              border: Border(
                top: BorderSide(color: unFocusedColor),
                left: BorderSide(color: unFocusedColor),
                bottom: BorderSide(color: unFocusedColor),
                // right: BorderSide(),
              )),
        ),
        SizedBox(
            width: 250,
            child: TextField(
              cursorHeight: style.fontSize,
              cursorWidth: 1,
              style: style,
              decoration: InputDecoration(
                // isDense: true,
                hintText: 'Please Input',
                hintStyle: style.copyWith(color: unFocusedColor),
                constraints: BoxConstraints.tight(Size(0, height)),
                // contentPadding: EdgeInsets.only(top: 8),
                contentPadding: const EdgeInsets.only(top: 0, right: 12, left: 12),
                focusedBorder: focusedBorder,
                enabledBorder: border,
                hoverColor: focusedColor,
                border: border,
              ),
            )),
      ],
    );
  }
}
