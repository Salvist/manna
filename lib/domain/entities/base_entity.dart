abstract class BaseEntity {
  final String id;
  final DateTime? _updatedAt;
  final DateTime createdAt;

  DateTime get updatedAt => _updatedAt ?? createdAt;

  const BaseEntity({
    required this.id,
    required this.createdAt,
    DateTime? updatedAt,
  }) : _updatedAt = updatedAt;
}
