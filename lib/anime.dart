import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_graphql_app/w_refresher.dart';
import 'package:smartrefresh/smartrefresh.dart';

import 'anime_model.dart';

class AnimeListPage extends StatefulWidget {
  const AnimeListPage({Key? key}) : super(key: key);

  @override
  State<AnimeListPage> createState() => _AnimeListPageState();
}

class _AnimeListPageState extends State<AnimeListPage> {
  var animeList = <AnimeModel>[];
  final controller = RefreshController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Cartoon'),
      ),
      body: WRefresher(
        controller: controller,
        onRefresh: () {
          controller.refreshCompleted();
        },
        child: Query(
          options: QueryOptions(
            document: gql(
              '''
              {
                Page {
                  media {
                    siteUrl
                    title {
                      english
                      native
                    }
                    description
                  }
                }
              }
              ''',
            ),
          ),
          builder: (result, {refetch, fetchMore}) {
            if (result.hasException) {
              return const Expanded(
                child: Center(child: Text('Nimadir xato ketdi')),
              );
            }
            print(result.data);
            if (result.isLoading) {
              return const Expanded(
                child: Center(child: CupertinoActivityIndicator()),
              );
            }
            print(result.data);
            final medias = (result.data?['Page']['media'] as List)
                ?.map((media) => Media.fromJson(media ?? {}))
                .toList() ??
                [];

            return ListView.separated(
              itemBuilder: (_, index) {
                return ExpansionTile(
                  childrenPadding: const EdgeInsets.all(16),
                  title: Text(
                      '${medias[index].title?.english} - ${medias[index].title?.native}'),
                  children: [
                    GestureDetector(
                      onTap: () {
                        _launchURL(medias[index].siteUrl);
                      },
                      child: Row(
                        children: [
                          Text('Website: '),
                          SizedBox(
                            height: 10,
                          ),
                          Text(medias[index].siteUrl ?? ''),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Text(medias[index].description ?? ''),
                  ],
                );
              },
              separatorBuilder: (_, __) => SizedBox(
                height: 12,
              ),
              itemCount: medias.length,
            );
          },
        ),
      ),
    );
  }


  Future<void> _launchURL(String? url) async {
    if (url != null && await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
