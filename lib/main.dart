import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:my_graphql_app/graphql_config.dart';
import 'package:my_graphql_app/search_country.dart';

import 'anime.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final service = GraphQlService();
  runApp(MainApp(
    client: ValueNotifier(service.client()),
  ));
}

class MainApp extends StatelessWidget {
  final ValueNotifier<GraphQLClient>? client;

  const MainApp({super.key, required this.client});

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimeListPage()
      ),
    );
  }
}
