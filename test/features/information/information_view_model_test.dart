import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:technical_challenge_v2/core/models/information_model.dart';
import 'package:technical_challenge_v2/core/repositories/information_repository_impl.dart';
import 'package:technical_challenge_v2/features/information/view_models/information_view_model.dart';
import 'information_view_model_test.mocks.dart';

@GenerateNiceMocks([MockSpec<InformationViewModel>(),MockSpec<InformationRepositoryImpl>()])
void main() {
  late InformationViewModel viewModel;
  late MockInformationRepositoryImpl mockRepository;

  setUp(() {
    mockRepository = MockInformationRepositoryImpl();
    viewModel = InformationViewModel(mockRepository);
  });

  group('InformationViewModel Tests', () {
    test('loadInformation carga datos correctamente', () async {
      final List<InformationModel> mockData = [
        InformationModel(id: 1, userId: 1, title: 'Test 1', body: 'Description 1'),
        InformationModel(id: 2, userId: 2, title: 'Test 2', body: 'Description 2'),
      ];
      when(mockRepository.information(page: 1, pageSize: 15))
        .thenAnswer((_) async => mockData);
      await viewModel.loadInformation();

      expect(
        viewModel.informationModel.map((e) => e.toJson()).toList(),
        mockData.map((e) => e.toJson()).toList(),
      );
    });

    test('searchController filtra correctamente', () async {
      final List<InformationModel> mockData = [
        InformationModel(id: 1, userId: 1, title: 'Test 1', body: 'Description 1'),
        InformationModel(id: 2, userId: 2, title: 'Test 2', body: 'Description 2'),
      ];

      viewModel.informationModelData = mockData;
      viewModel.searchController.text = 'Test 1';
      viewModel.filterInformation();

      expect(viewModel.filteredInformationModel.length, 1);
      expect(viewModel.filteredInformationModel[0].title, 'Test 1');
    });
  });
}
