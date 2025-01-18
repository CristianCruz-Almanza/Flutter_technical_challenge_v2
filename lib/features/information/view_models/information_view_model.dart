import 'package:flutter/material.dart';
import 'package:technical_challenge_v2/core/models/information_model.dart';
import 'package:technical_challenge_v2/core/repositories/information_repository_impl.dart';

class InformationViewModel extends ChangeNotifier{
  final InformationRepositoryImpl informationRepository;
  List<InformationModel> informationModelData = [];
  List<InformationModel> filteredInformationModel = [];
  int _page = 1;
  static const int _pageSize = 15;
  bool _isLoading = false;
  String errorMessage = '';

  TextEditingController searchController = TextEditingController();


  InformationViewModel([InformationRepositoryImpl? repository])
    : informationRepository = repository ?? InformationRepositoryImpl() {
    loadInformation();
    searchController.addListener(filterInformation);
  }

  List<InformationModel> get informationModel => informationModelData;
  bool get isLoading => _isLoading;

  Future<void> loadInformation() async {
    if (_isLoading) return;
    _isLoading = true;
    notifyListeners();
    try {
      final newInformation = await informationRepository.information(page: _page, pageSize: _pageSize);
      if (newInformation.isNotEmpty) {
        informationModelData.addAll(newInformation);
        filteredInformationModel = informationModelData;
        _page++;
      }
    } catch (e) {
      errorMessage = e.toString().replaceAll('Exception: ', '');
    }
    _isLoading = false;
    notifyListeners();
  }
  void filterInformation() {
    final query = searchController.text.toLowerCase();
    filteredInformationModel = query.isEmpty
        ? informationModelData
        : informationModelData
            .where((information) => information.title.toLowerCase().contains(query))
            .toList();
    notifyListeners();
  }
  
}