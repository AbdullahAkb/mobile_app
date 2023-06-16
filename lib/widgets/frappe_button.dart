import 'package:flutter/material.dart';

import '../config/palette.dart';
import '../utils/enums.dart';
import '../utils/frappe_icon.dart';

class FrappeFlatButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final ButtonType buttonType;
  final String? icon;
  final double height;
  final double minWidth;
  final bool fullWidth;

  FrappeFlatButton({
    super.key,
    required this.onPressed,
    required this.buttonType,
    required this.title,
    this.icon,
    this.height = 36.0,
    this.minWidth = 88,
    this.fullWidth = false,
  });

  FrappeFlatButton.small({
    super.key,
    required this.onPressed,
    required this.buttonType,
    required this.title,
    this.icon,
    this.height = 32.0,
    this.minWidth = 88,
    this.fullWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    late Color _buttonColor;
    late TextStyle _textStyle;

    if (onPressed == null) {
      _buttonColor = Palette.disabledButonColor;
      _textStyle =
          TextStyle(color: Colors.white, fontSize: fullWidth ? 18 : null);
    } else if (buttonType == ButtonType.primary) {
      _buttonColor = Palette.primaryButtonColor;
      _textStyle =
          TextStyle(color: Colors.white, fontSize: fullWidth ? 18 : null);
    } else {
      _buttonColor = Palette.secondaryButtonColor;
      _textStyle =
          TextStyle(color: Colors.black, fontSize: fullWidth ? 18 : null);
    }

    if (icon != null) {
      return ButtonTheme(
        height: height,
        minWidth: fullWidth ? double.infinity : minWidth,
        child: FlatButton(
          label: Text(
            title,
            style: _textStyle,
          ),
          icon: FrappeIcon(icon!),
          // onPress: onPressed,
          shape: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
          ),
          color: _buttonColor,
          disabledColor: _buttonColor,
        ),
      );
    } else {
      return ButtonTheme(
        height: height,
        minWidth: fullWidth ? double.infinity : minWidth,
        child: FlatButton(
            onPressed: onPressed,
            shape: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
            ),
            color: _buttonColor,
            disabledColor: _buttonColor,
            child: Text(
              title,
              style: _textStyle,
            ),
            visualDensity: null,
            label: null,
            icon: null),
      );
    }
  }
}

FlatButton(
    {void Function()? onPressed,
    OutlineInputBorder? shape,
    Color? color,
    Color? disabledColor,
    Widget? child,
    VisualDensity? visualDensity,
    EdgeInsets? padding,
    int? minWidth,
    Text? label,
    FrappeIcon? icon}) {}

class FrappeRaisedButton extends StatelessWidget {
  final void Function()? onPressed;
  final String? title;
  final Widget? titleWidget;
  final String? icon;
  final double? height;
  final double? minWidth;
  final Color? color;
  final double? iconSize;
  final bool fullWidth;

  FrappeRaisedButton({
    super.key,
    required this.onPressed,
    this.titleWidget,
    this.title,
    this.icon,
    this.iconSize,
    this.height = 36.0,
    this.color = Colors.white,
    this.minWidth = 88,
    this.fullWidth = false,
  });

  FrappeRaisedButton.small({
    super.key,
    required this.onPressed,
    this.title,
    this.titleWidget,
    this.icon,
    this.iconSize,
    this.height = 32.0,
    this.color = Colors.white,
    this.minWidth = 88,
    this.fullWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    if (title != null) {
    } else if (titleWidget != null) {
    } else {}

    if (icon != null) {
      return ButtonTheme(
          height: height!,
          minWidth: fullWidth ? double.infinity : minWidth!,
          child: Container()
          // RaisedButton.icon(
          //   color: color,
          //   label: tWidget,
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(6.0),
          //   ),
          //   icon: FrappeIcon(
          //     icon!,
          //     size: iconSize,
          //   ),
          //   onPressed: onPressed,
          // ),
          );
    } else {
      return ButtonTheme(
          height: height!,
          minWidth: fullWidth ? double.infinity : minWidth!,
          child: Container()
          // RaisedButton(
          //   color: color,
          //   onPressed: onPressed,
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(6.0),
          //   ),
          //   child: tWidget,
          // ),
          );
    }
  }
}

class FrappeIconButton extends StatelessWidget {
  final void Function()? onPressed;
  final ButtonType buttonType;
  final String icon;
  final double height;
  final double minWidth;
  final bool fullWidth;

  FrappeIconButton({
    super.key,
    required this.onPressed,
    required this.buttonType,
    required this.icon,
    this.height = 36.0,
    this.minWidth = 88,
    this.fullWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    Color _buttonColor;

    if (onPressed == null) {
      _buttonColor = Palette.disabledButonColor;
    } else if (buttonType == ButtonType.primary) {
      _buttonColor = Palette.primaryButtonColor;
    } else {
      _buttonColor = Palette.secondaryButtonColor;
    }

    return Container(
      decoration: BoxDecoration(
        color: _buttonColor,
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: ButtonTheme(
        height: height,
        minWidth: fullWidth ? double.infinity : minWidth,
        child: IconButton(
          icon: FrappeIcon(icon),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
