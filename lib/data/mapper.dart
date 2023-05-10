abstract class Mapper<E> {
  E fromMap(Map<String, dynamic> data);

  Map<String, dynamic> toMap();
}
