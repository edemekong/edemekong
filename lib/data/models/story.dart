import 'dart:convert';

class Story {
  final String id;
  final String title;
  final String address;
  final int createdAt;
  final int startAt;
  final String endAt;

  Story({
    required this.id,
    required this.title,
    required this.address,
    required this.createdAt,
    required this.startAt,
    required this.endAt,
  });

  Story copyWith({
    String? id,
    String? title,
    String? address,
    int? createdAt,
    int? startAt,
    String? endAt,
  }) {
    return Story(
      id: id ?? this.id,
      title: title ?? this.title,
      address: address ?? this.address,
      createdAt: createdAt ?? this.createdAt,
      startAt: startAt ?? this.startAt,
      endAt: endAt ?? this.endAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'address': address,
      'createdAt': createdAt,
      'startAt': startAt,
      'endAt': endAt,
    };
  }

  factory Story.fromMap(Map<String, dynamic> map) {
    return Story(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      address: map['address'] ?? '',
      createdAt: map['createdAt']?.toInt() ?? 0,
      startAt: map['startAt']?.toInt() ?? 0,
      endAt: map['endAt'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Story.fromJson(String source) => Story.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Story(id: $id, title: $title, address: $address, createdAt: $createdAt, startAt: $startAt, endAt: $endAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Story && other.id == id && other.title == title && other.address == address && other.createdAt == createdAt && other.startAt == startAt && other.endAt == endAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^ title.hashCode ^ address.hashCode ^ createdAt.hashCode ^ startAt.hashCode ^ endAt.hashCode;
  }
}
