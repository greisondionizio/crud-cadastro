import 'package:crud_cadastro/provider/users.dart';
import 'package:crud_cadastro/routes/app_routes.dart';
import 'package:crud_cadastro/views/user_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'views/user_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Users(),
        ),
      ],
      child: MaterialApp(
        title: 'Casdastro de Listas',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          AppRoutes.HOME: (_) => UserList(),
          AppRoutes.USER_FORM: (_) => UserForm(),
        },
      ),
    );
  }
}
