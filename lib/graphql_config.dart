import 'package:graphql_flutter/graphql_flutter.dart';
const countries = ('https://countries.trevorblades.com/graphql');
class GraphQlService{
  final httpLink = HttpLink('https://graphql.anilist.co');
  GraphQLClient client() => GraphQLClient(link: httpLink, cache: GraphQLCache());
}