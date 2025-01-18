import 'package:technical_challenge_v2/core/models/information_model.dart';

abstract class InformationRepository {
  Future<List<InformationModel>> information({required int page, required int pageSize});
  Future<InformationModel> detailInformation({required int id});
}