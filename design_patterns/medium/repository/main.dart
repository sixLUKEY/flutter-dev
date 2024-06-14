abstract class Repository {
  Future<void> save();
  Future<void> delete();
  Future<List<dynamic>> findAll();
  Future<dynamic> findById(int id);
}

class UserRepository implements Repository {
  @override
  Future<void> save() {
    print('saving...');
    throw UnimplementedError();
  }

  @override
  Future<void> delete() {
    throw UnimplementedError();
  }

  @override
  Future<List> findAll() {
    throw UnimplementedError();
  }

  @override
  Future findById(int id) {
    throw UnimplementedError();
  }
}
