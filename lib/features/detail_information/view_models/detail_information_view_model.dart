import 'package:flutter/material.dart';
import 'package:technical_challenge_v2/core/models/information_model.dart';
import 'package:technical_challenge_v2/core/repositories/information_repository_impl.dart';

class DetailInformationViewModel extends ChangeNotifier{
  final informationRepository = InformationRepositoryImpl();
  InformationModel? _informationModel;
  bool _isLoading = false;
  String errorMessage = '';

  InformationModel? get informationModel => _informationModel;
  bool get isLoading => _isLoading;

  Future<void> detailInformation({required final int id}) async {
    _isLoading = true;
    try {
      _informationModel = await informationRepository.detailInformation(id: id);
    } catch (e) {  
      errorMessage = e.toString().replaceAll('Exception: ', '');
    }
    _isLoading = false;
    notifyListeners();
  }
  
}