import 'package:manna/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.id,
    required super.firstName,
    required super.lastName,
    required super.email,
    required super.sex,
  });

  UserModel.fromMap(Map<String, dynamic> map)
      : super(
          id: map['id'],
          firstName: map['firstName'],
          lastName: map['lastName'],
          email: map['email'],
          sex: map['sex'],
        );

  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'sex': sex,
    };
  }
}
