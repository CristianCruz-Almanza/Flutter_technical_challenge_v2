import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_challenge_v2/config/app_router.dart';
import 'package:technical_challenge_v2/design/design.dart';
import 'package:technical_challenge_v2/features/information/view_models/information_view_model.dart';

class InformationView extends StatelessWidget {
  const InformationView({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        context.read<InformationViewModel>().loadInformation();
      }
    });
    return Scaffold(
      body: Consumer<InformationViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading && viewModel.filteredInformationModel.isEmpty) {
            return Center(child: CircularProgressIndicator());
          }
          if (viewModel.informationModel.isEmpty) {
            return Center(child: Text(viewModel.errorMessage));
          }
          return SafeArea(
            child: Center(
              child: viewModel.informationModel.isEmpty
                ? Text(viewModel.errorMessage)
                : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    spacing: 15,
                    children: [
                      SearchTextFormField(
                        controller: context.read<InformationViewModel>().searchController,
                      ),
                      Expanded(
                        child: ListView.builder(
                          controller: scrollController,
                          itemCount: viewModel.filteredInformationModel.length,
                          itemBuilder: (context, index) {
                            final information = viewModel.filteredInformationModel[index];
                            return Card(
                              child: ListTile(
                                title: Text(information.title),
                                trailing: Icon(Icons.arrow_right),
                                onTap: () =>  Navigator.pushNamed(
                                  context, 
                                  AppRouter.detail,
                                  arguments: information.id
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      if (viewModel.isLoading) 
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Center(child: CircularProgressIndicator()),
                        ),
                    ],
                  ),
                )
            ),
          );
        }
      ),
    );
  }
}