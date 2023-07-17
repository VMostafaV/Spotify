import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MList {
  final String NameTypeSong;
  final String NameSinger;
  final String NameAlbum;
  final String ImageUrl;
  final String ImageUrl2;
  final String SongName;
  final Icon MIcons;
  final String SongeUrl;
  final List<String> newList;

  // final String Url;

  const MList({
    // ignore: non_constant_identifier_names
    required this.NameTypeSong,
    required this.NameSinger,
    required this.NameAlbum,
    required this.ImageUrl,
    required this.SongName,
    required this.MIcons,
    required this.SongeUrl,
    required this.ImageUrl2,
    required this.newList,

    // required this.Url,
  });
}

// const MList _AdminList = MList(
//     NameTypeSong: 'NameTypeSong',
//     NameSinger: 'NameSinger',
//     NameAlbum: 'NameAlbum',
//     ImageUrl: 'ImageUrl',
//     SongName: 'SongName',
//     MIcons: Icon(Icons.diamond, color: Colors.yellowAccent),
//     SongeUrl: 'SongeUrl',
//     ImageUrl2: 'ImageUrl2',
//     newList: [
//       'image/mercy kanye west.mp3',
//       'image/Big_Sean_I_Dont_Fuck_With_You_Feat_E40_-_1412366994.mp3',
//       'image/Billie_Eilish_-_lovely_(with_Khalid)_(mp3hunter.net).mp3',
//       'image/Rag_n_Bone_Man_-_Human_(Official_Video)(MP3_128K).mp3',
//     ]);

const listItems = <MList>[
  MList(
      ImageUrl: 'image/n1.png',
      ImageUrl2: 'image/p47.png',
      SongeUrl: 'image/mercy kanye west.mp3',
      NameAlbum: 'Album .Patrin',
      SongName: ' kiss(Ofeisal Songe)',
      NameTypeSong: 'Rock',
      NameSinger: 'Alix.A',
      MIcons: Icon(Icons.diamond, color: Colors.yellowAccent),
      newList: []),
  MList(
      ImageUrl: 'image/n2.png',
      ImageUrl2: 'image/p48.png',
      SongeUrl: 'image/Big_Sean_I_Dont_Fuck_With_You_Feat_E40_-_1412366994.mp3',
      NameAlbum: 'Album .OlGA',
      SongName: ' Hugs(Ofeisal Songe)',
      NameTypeSong: 'Dance',
      NameSinger: 'Nowa',
      MIcons: Icon(
        CupertinoIcons.heart,
        color: Colors.redAccent,
      ),
      newList: []),
  MList(
    ImageUrl: 'image/n3.png',
    ImageUrl2: 'image/p49.png',
    SongeUrl: 'image/Billie_Eilish_-_lovely_(with_Khalid)_(mp3hunter.net).mp3',
    NameAlbum: 'Album .Niss',
    SongName: ' Blums(Ofeisal Songe)',
    NameTypeSong: 'Hip Hop',
    NameSinger: 'John Mart',
    MIcons: Icon(Icons.hide_source_sharp),
    newList: [],
  ),
  MList(
    ImageUrl: 'image/n5.png',
    ImageUrl2: 'image/p50.png',
    SongeUrl: 'image/Boney_M._-_Rasputin_(Official_Audio)(MP3_128K)_1.mp3',
    NameAlbum: 'Album .Patrin',
    SongName: ' kiss(Ofeisal Songe)',
    NameTypeSong: 'Rock',
    NameSinger: 'Mlika Alix',
    MIcons: Icon(Icons.add_card_rounded),
    newList: [],
  ),
  MList(
    ImageUrl: 'image/n6.png',
    ImageUrl2: 'image/p51.png',
    SongeUrl: 'image/Not Afraid.mp3',
    NameAlbum: 'Album .OlGA',
    SongName: ' Hugs(Ofeisal Songe)',
    NameTypeSong: 'Dance',
    NameSinger: 'MR.oz',
    MIcons: Icon(Icons.view_carousel_outlined),
    newList: [],
  ),
  MList(
    ImageUrl: 'image/n7.png',
    ImageUrl2: 'image/p52.png',
    SongeUrl: 'image/Rag_n_Bone_Man_-_Human_(Official_Video)(MP3_128K).mp3',
    NameAlbum: 'Album .Niss',
    SongName: ' Blums(Ofeisal Songe)',
    NameTypeSong: 'Hip Hop',
    NameSinger: 'John Nwa',
    MIcons: Icon(Icons.hide_source_sharp),
    newList: [],
  ),
  MList(
    ImageUrl: 'image/n8.png',
    ImageUrl2: 'image/p54.png',
    SongeUrl:
        'image/SHAGGY_-_MAD_MAD_WOLRD_Feat._SiZZLA___COLLiE_BUDDZ_[ADMSXT](MP3_128K).mp3',
    NameAlbum: 'Album .Patrin',
    SongName: ' kiss(Ofeisal Songe)',
    NameTypeSong: 'Rock',
    NameSinger: 'Mlika Alix',
    MIcons: Icon(Icons.add_card_rounded),
    newList: [],
  ),
  MList(
    ImageUrl: 'image/p44.png',
    ImageUrl2: 'image/p55.png',
    SongeUrl: 'image/SOFI_TUKKER_-_Batshit(MP3_128K).mp3',
    NameAlbum: 'Album .OlGA',
    SongName: ' Hugs(Ofeisal Songe)',
    NameTypeSong: 'Dance',
    NameSinger: 'MRoz ',
    MIcons: Icon(Icons.view_carousel_outlined),
    newList: [],
  ),
  MList(
    ImageUrl: 'image/p39.png',
    ImageUrl2: 'image/p56.png',
    SongeUrl:
        'image/songs_f6_ac_956118dc65fe093f9869297d0c9b_Walk_It_Talk_It_(feat._Drake).mp3',
    NameAlbum: 'Album .Niss',
    SongName: ' Blums(Ofeisal Songe)',
    NameTypeSong: 'Hip Hop',
    NameSinger: 'Jykop ',
    MIcons: Icon(Icons.view_carousel_outlined),
    newList: [],
  ),
];
