import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:tubes_pemob/view/listUser.dart';
import '../view/home.dart';

import '../model/FirebaseUser.dart';
import 'authenticate/handler.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FirebaseUser?>(context);

    if (user == null) {
      return Handler();
    } else {
      return ListPage();
    }
  }
}
