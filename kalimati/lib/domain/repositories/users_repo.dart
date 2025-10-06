class User {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String photoUrl;
  final String role; // 'Teacher'
  const User({required this.firstName, required this.lastName, required this.email, required this.password, required this.photoUrl, required this.role});
}

abstract class UsersRepo {
  Future<void> seedFromAssets(); // load assets/users.json
  Future<User?> getByEmail(String email);
  Future<bool> verifyPassword(String email, String password);
  User? get currentUser;
}