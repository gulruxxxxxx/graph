import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:my_graphql_app/country_model.dart';

class SearchCountryPage extends StatefulWidget {
  const SearchCountryPage({super.key});

  @override
  State<SearchCountryPage> createState() => _SearchCountryPageState();
}

class _SearchCountryPageState extends State<SearchCountryPage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(controller: controller,onEditingComplete: (){
            setState(() {

            });
          },
          ),
          Query(
              options: QueryOptions(document: gql('''
            query Query {
  country(code: "${controller.text}") {
    name
    native
    capital
    emoji
    currency
    languages {
      code
      name
    }
  }
}
            ''')),
              builder: (result, {refetch, fetchMore})
              {
                if (result.hasException) {
                  return const Expanded(
                    child: Center(child: Text('Nimadir xato ketdi')),
                  );
                }
                print(result.data);
                if (result.isLoading){
                  return const Expanded(
                    child: Center(child: CupertinoActivityIndicator()),
                  );
                }
                print(result.data);
                final data = CountryClass.fromJson(result.data?['country']??{});
                return Expanded(child: Text('$data'),);
              })
        ],
      ),
    );
  }
}
