import 'package:manna/domain/entities/base_entity.dart';

class UserEntity extends BaseEntity {
  final String firstName;
  final String lastName;
  final String email;

  final String sex;

  const UserEntity({
    required super.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.sex,
    required super.createdAt,
    super.updatedAt,
  });
}
