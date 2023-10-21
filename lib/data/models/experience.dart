import 'dart:convert';

class Experience {
  final String id;
  final String title;
  final String description;
  final String employer;
  final int startAt;
  final int endAt;
  final int createdAt;
  final bool isCurrentExperience;

  Experience({
    required this.id,
    required this.title,
    required this.description,
    required this.employer,
    required this.startAt,
    required this.endAt,
    required this.createdAt,
    required this.isCurrentExperience,
  });

  Experience copyWith({
    String? id,
    String? title,
    String? description,
    String? employer,
    int? startAt,
    int? endAt,
    int? createdAt,
    bool? isCurrentExperience,
  }) {
    return Experience(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      employer: employer ?? this.employer,
      startAt: startAt ?? this.startAt,
      endAt: endAt ?? this.endAt,
      createdAt: createdAt ?? this.createdAt,
      isCurrentExperience: isCurrentExperience ?? this.isCurrentExperience,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'employer': employer,
      'startAt': startAt,
      'endAt': endAt,
      'createdAt': createdAt,
      'isCurrentExperience': isCurrentExperience,
    };
  }

  factory Experience.fromMap(Map<String, dynamic> map) {
    return Experience(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      employer: map['employer'] ?? '',
      startAt: map['startAt']?.toInt() ?? 0,
      endAt: map['endAt']?.toInt() ?? 0,
      createdAt: map['createdAt']?.toInt() ?? 0,
      isCurrentExperience: map['isCurrentExperience'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Experience.fromJson(String source) => Experience.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Experience(id: $id, title: $title, description: $description, employer: $employer, startAt: $startAt, endAt: $endAt, createdAt: $createdAt, isCurrentExperience: $isCurrentExperience)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Experience &&
        other.id == id &&
        other.title == title &&
        other.description == description &&
        other.employer == employer &&
        other.startAt == startAt &&
        other.endAt == endAt &&
        other.createdAt == createdAt &&
        other.isCurrentExperience == isCurrentExperience;
  }

  @override
  int get hashCode {
    return id.hashCode ^ title.hashCode ^ description.hashCode ^ employer.hashCode ^ startAt.hashCode ^ endAt.hashCode ^ createdAt.hashCode ^ isCurrentExperience.hashCode;
  }
}
