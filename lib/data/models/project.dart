import 'dart:convert';

import 'package:flutter/foundation.dart';

class Project {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final Map<String, dynamic> meta;
  final int createdAt;
  final int updatedAt;

  Project({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.meta,
    required this.createdAt,
    required this.updatedAt,
  });

  Project copyWith({
    String? id,
    String? title,
    String? description,
    String? imageUrl,
    Map<String, dynamic>? meta,
    int? createdAt,
    int? updatedAt,
  }) {
    return Project(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      meta: meta ?? this.meta,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
      'meta': meta,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory Project.fromMap(Map<String, dynamic> map) {
    return Project(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      meta: Map<String, dynamic>.from(map['meta']),
      createdAt: map['createdAt']?.toInt() ?? 0,
      updatedAt: map['updatedAt']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Project.fromJson(String source) => Project.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Project(id: $id, title: $title, description: $description, imageUrl: $imageUrl, meta: $meta, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Project &&
        other.id == id &&
        other.title == title &&
        other.description == description &&
        other.imageUrl == imageUrl &&
        mapEquals(other.meta, meta) &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^ title.hashCode ^ description.hashCode ^ imageUrl.hashCode ^ meta.hashCode ^ createdAt.hashCode ^ updatedAt.hashCode;
  }
}
