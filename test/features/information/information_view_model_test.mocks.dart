// Mocks generated by Mockito 5.4.5 from annotations
// in technical_challenge_v2/test/features/information/information_view_model_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i8;
import 'dart:ui' as _i9;

import 'package:flutter/material.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i7;
import 'package:technical_challenge_v2/core/models/information_model.dart'
    as _i5;
import 'package:technical_challenge_v2/core/repositories/information_repository_impl.dart'
    as _i2;
import 'package:technical_challenge_v2/core/services/api_service.dart' as _i4;
import 'package:technical_challenge_v2/features/information/view_models/information_view_model.dart'
    as _i6;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeInformationRepositoryImpl_0 extends _i1.SmartFake
    implements _i2.InformationRepositoryImpl {
  _FakeInformationRepositoryImpl_0(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeTextEditingController_1 extends _i1.SmartFake
    implements _i3.TextEditingController {
  _FakeTextEditingController_1(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeApiService_2 extends _i1.SmartFake implements _i4.ApiService {
  _FakeApiService_2(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeInformationModel_3 extends _i1.SmartFake
    implements _i5.InformationModel {
  _FakeInformationModel_3(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

/// A class which mocks [InformationViewModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockInformationViewModel extends _i1.Mock
    implements _i6.InformationViewModel {
  @override
  _i2.InformationRepositoryImpl get informationRepository =>
      (super.noSuchMethod(
            Invocation.getter(#informationRepository),
            returnValue: _FakeInformationRepositoryImpl_0(
              this,
              Invocation.getter(#informationRepository),
            ),
            returnValueForMissingStub: _FakeInformationRepositoryImpl_0(
              this,
              Invocation.getter(#informationRepository),
            ),
          )
          as _i2.InformationRepositoryImpl);

  @override
  List<_i5.InformationModel> get informationModelData =>
      (super.noSuchMethod(
            Invocation.getter(#informationModelData),
            returnValue: <_i5.InformationModel>[],
            returnValueForMissingStub: <_i5.InformationModel>[],
          )
          as List<_i5.InformationModel>);

  @override
  set informationModelData(List<_i5.InformationModel>? _informationModelData) =>
      super.noSuchMethod(
        Invocation.setter(#informationModelData, _informationModelData),
        returnValueForMissingStub: null,
      );

  @override
  List<_i5.InformationModel> get filteredInformationModel =>
      (super.noSuchMethod(
            Invocation.getter(#filteredInformationModel),
            returnValue: <_i5.InformationModel>[],
            returnValueForMissingStub: <_i5.InformationModel>[],
          )
          as List<_i5.InformationModel>);

  @override
  set filteredInformationModel(
    List<_i5.InformationModel>? _filteredInformationModel,
  ) => super.noSuchMethod(
    Invocation.setter(#filteredInformationModel, _filteredInformationModel),
    returnValueForMissingStub: null,
  );

  @override
  String get errorMessage =>
      (super.noSuchMethod(
            Invocation.getter(#errorMessage),
            returnValue: _i7.dummyValue<String>(
              this,
              Invocation.getter(#errorMessage),
            ),
            returnValueForMissingStub: _i7.dummyValue<String>(
              this,
              Invocation.getter(#errorMessage),
            ),
          )
          as String);

  @override
  set errorMessage(String? _errorMessage) => super.noSuchMethod(
    Invocation.setter(#errorMessage, _errorMessage),
    returnValueForMissingStub: null,
  );

  @override
  _i3.TextEditingController get searchController =>
      (super.noSuchMethod(
            Invocation.getter(#searchController),
            returnValue: _FakeTextEditingController_1(
              this,
              Invocation.getter(#searchController),
            ),
            returnValueForMissingStub: _FakeTextEditingController_1(
              this,
              Invocation.getter(#searchController),
            ),
          )
          as _i3.TextEditingController);

  @override
  set searchController(_i3.TextEditingController? _searchController) =>
      super.noSuchMethod(
        Invocation.setter(#searchController, _searchController),
        returnValueForMissingStub: null,
      );

  @override
  List<_i5.InformationModel> get informationModel =>
      (super.noSuchMethod(
            Invocation.getter(#informationModel),
            returnValue: <_i5.InformationModel>[],
            returnValueForMissingStub: <_i5.InformationModel>[],
          )
          as List<_i5.InformationModel>);

  @override
  bool get isLoading =>
      (super.noSuchMethod(
            Invocation.getter(#isLoading),
            returnValue: false,
            returnValueForMissingStub: false,
          )
          as bool);

  @override
  bool get hasListeners =>
      (super.noSuchMethod(
            Invocation.getter(#hasListeners),
            returnValue: false,
            returnValueForMissingStub: false,
          )
          as bool);

  @override
  _i8.Future<void> loadInformation() =>
      (super.noSuchMethod(
            Invocation.method(#loadInformation, []),
            returnValue: _i8.Future<void>.value(),
            returnValueForMissingStub: _i8.Future<void>.value(),
          )
          as _i8.Future<void>);

  @override
  void filterInformation() => super.noSuchMethod(
    Invocation.method(#filterInformation, []),
    returnValueForMissingStub: null,
  );

  @override
  void addListener(_i9.VoidCallback? listener) => super.noSuchMethod(
    Invocation.method(#addListener, [listener]),
    returnValueForMissingStub: null,
  );

  @override
  void removeListener(_i9.VoidCallback? listener) => super.noSuchMethod(
    Invocation.method(#removeListener, [listener]),
    returnValueForMissingStub: null,
  );

  @override
  void dispose() => super.noSuchMethod(
    Invocation.method(#dispose, []),
    returnValueForMissingStub: null,
  );

  @override
  void notifyListeners() => super.noSuchMethod(
    Invocation.method(#notifyListeners, []),
    returnValueForMissingStub: null,
  );
}

/// A class which mocks [InformationRepositoryImpl].
///
/// See the documentation for Mockito's code generation for more information.
class MockInformationRepositoryImpl extends _i1.Mock
    implements _i2.InformationRepositoryImpl {
  @override
  _i4.ApiService get apiService =>
      (super.noSuchMethod(
            Invocation.getter(#apiService),
            returnValue: _FakeApiService_2(
              this,
              Invocation.getter(#apiService),
            ),
            returnValueForMissingStub: _FakeApiService_2(
              this,
              Invocation.getter(#apiService),
            ),
          )
          as _i4.ApiService);

  @override
  set apiService(_i4.ApiService? _apiService) => super.noSuchMethod(
    Invocation.setter(#apiService, _apiService),
    returnValueForMissingStub: null,
  );

  @override
  _i8.Future<_i5.InformationModel> detailInformation({required int? id}) =>
      (super.noSuchMethod(
            Invocation.method(#detailInformation, [], {#id: id}),
            returnValue: _i8.Future<_i5.InformationModel>.value(
              _FakeInformationModel_3(
                this,
                Invocation.method(#detailInformation, [], {#id: id}),
              ),
            ),
            returnValueForMissingStub: _i8.Future<_i5.InformationModel>.value(
              _FakeInformationModel_3(
                this,
                Invocation.method(#detailInformation, [], {#id: id}),
              ),
            ),
          )
          as _i8.Future<_i5.InformationModel>);

  @override
  _i8.Future<List<_i5.InformationModel>> information({
    required int? page,
    required int? pageSize,
  }) =>
      (super.noSuchMethod(
            Invocation.method(#information, [], {
              #page: page,
              #pageSize: pageSize,
            }),
            returnValue: _i8.Future<List<_i5.InformationModel>>.value(
              <_i5.InformationModel>[],
            ),
            returnValueForMissingStub:
                _i8.Future<List<_i5.InformationModel>>.value(
                  <_i5.InformationModel>[],
                ),
          )
          as _i8.Future<List<_i5.InformationModel>>);
}
