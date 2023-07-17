import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';

class FetchData extends StatefulWidget {
  const FetchData({super.key});

  @override
  State<FetchData> createState() => _FetchDataState();
}

class _FetchDataState extends State<FetchData> {
  final _onAudioQ = OnAudioQuery();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Data From Storage'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<SongModel>>(
        future: _onAudioQ.querySongs(
          sortType: null,
          orderType: OrderType.ASC_OR_SMALLER,
          uriType: UriType.EXTERNAL,
          ignoreCase: true,
        ),
        builder: (context, items) {
          if (items.data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (items.data!.isEmpty) {
            return const Center(
              child: Text('No Music Found!'),
            );
          } else {
            return ListView.builder(
              itemCount: items.data!.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(items.data![index].displayNameWOExt),
                leading: const Icon(Icons.music_note),
                subtitle: Text('${items.data![index].artist}'),
                trailing: const Icon(Icons.more_horiz),
              ),
            );
          }
        },
      ),
    );
  }
}
