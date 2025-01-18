import 'package:technical_challenge_v2/core/models/information_model.dart';
import 'package:technical_challenge_v2/core/repositories/information_repository.dart';
import 'package:technical_challenge_v2/core/services/api_service.dart';

class InformationRepositoryImpl implements InformationRepository {
  ApiService apiService = ApiService();

  @override
  Future<InformationModel> detailInformation({required int id}) async {
    try {
      final response = await apiService.show('/posts', id);
      return InformationModel.fromJson(response);
    } catch (e) {
      throw Exception('Error fetching details for id $id: $e]');
    }
  }

  @override
  Future<List<InformationModel>> information({required int page, required int pageSize }) async {
    try {
      final response = await apiService.get('/posts?_page=$page&_limit=$pageSize');
      return response.map<InformationModel>((info) => InformationModel.fromJson(info)).toList();
    } catch (e) {
      throw Exception('Error fetching information: $e');
    }
  }
}
