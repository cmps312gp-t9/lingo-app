import '../entities/learning_package.dart';

abstract class PackagesRepo {
  Future<List<LearningPackage>> getAll({String? keyword, String? level});
  Future<LearningPackage?> getById(String id);
  Future<String> addPackage(LearningPackage pkg);
  Future<void> updatePackage(LearningPackage pkg);
  Future<void> deletePackage(String id, {required String requesterEmail});
}