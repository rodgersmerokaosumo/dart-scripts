class User {
  const User({this.id = 0, this.name = 'anonymous'}) : assert(id >= 0);
  const User.anonymous() : this();

  final String name;
  final int id;

  String toJSON() {
    return '{"id":$id, "name":"$name"}';
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}
