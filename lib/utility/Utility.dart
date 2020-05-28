import 'package:flutter/material.dart';

showModalView(BuildContext context, Widget page, {maintainState=true, fullscreenDialog=true}) {
  Navigator.push(
        context,
        MaterialPageRoute(
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog,
            builder: (context) {
              return page;
            }));
}