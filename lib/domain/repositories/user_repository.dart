import 'package:manna/domain/entities/user_entity.dart';

abstract class UserRepository {
  //

  Future<UserEntity> getUser(String id);
}
