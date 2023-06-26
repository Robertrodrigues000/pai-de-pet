import 'package:flutter/material.dart';

abstract class SnackbarHelper {
  static const _defaultDuration = Duration(seconds: 3);

  static void _call({
    required String message,
    required BuildContext context, 
    Color? backgroundColor,
    Duration? duration,
  }) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: backgroundColor,
        duration: duration ?? _defaultDuration,
      ),
    );
  }

  static void error({
    required String message,
    required BuildContext context, 
    Duration? duration,
  }) {
    _call(
      message: message,
      context: context,
      backgroundColor: Colors.red,
      duration: duration,
    );
  }

  static void success({
    required String message,
    required BuildContext context,
    Duration? duration,
  }) {
    _call(
      message: message,
      context: context,
      backgroundColor: Colors.green,
      duration: duration,
    );
  }
}
