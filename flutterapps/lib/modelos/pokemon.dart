import 'package:flutter/material.dart';

class photos {
  int albumId = 0;
  int id = 0;
  String title = "";
  String url = "";
  String thumbnailUrl = "";

  photos(
    dynamic albumId,
    dynamic id,
    dynamic title,
    dynamic url,
    dynamic thumbnailUrl,
  ) {
    this.albumId = albumId;
    this.id = id;
    this.title = title;
    this.url = url;
    this.thumbnailUrl = thumbnailUrl;
  }
}
