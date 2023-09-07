import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freelanceplus/tabs_page.dart';
import 'package:freelanceplus/widget/client_form.dart';
import 'package:freelanceplus/widget/contact_list.dart';
import 'package:go_router/go_router.dart';
import 'package:sqflite/sqflite.dart';

class AppRouterConfig {
  static GoRouter build(AsyncValue<Database> database) {
    final routerConfig = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) =>
              database
                  .whenData(
                    (database) => TabsPage(),
                  )
                  .value ??
              Container(),
        ),
        GoRoute(
          path: '/client/add',
          builder: (context, state) => ClientForm(),
        ),
        GoRoute(
          path: '/client/:id',
          builder: (context, state) => ClientForm(
            id: int.parse(state.pathParameters['id']!),
          ),
        ),
        GoRoute(
          path: '/contact/import',
          builder: (context, state) => const ContactList(),
        ),
      ],
    );
    return routerConfig;
  }
}
