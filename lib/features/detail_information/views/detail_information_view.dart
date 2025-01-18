import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_challenge_v2/features/detail_information/view_models/detail_information_view_model.dart';

class DetailInformationView extends StatefulWidget {
  const DetailInformationView({required this.id, super.key});

  final int id;

  @override
  State<DetailInformationView> createState() => _DetailInformationViewState();
}

class _DetailInformationViewState extends State<DetailInformationView> {
  @override
  void initState() {
    final viewModel = Provider.of<DetailInformationViewModel>(context, listen: false);
    viewModel.detailInformation(id:widget.id);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<DetailInformationViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          if (viewModel.informationModel == null) {
            return Center(child: Text(viewModel.errorMessage));
          }
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Title:  ',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      children: [
                        TextSpan(
                          text: viewModel.informationModel?.title ?? '' ,
                          style: DefaultTextStyle.of(context).style,
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Body:  ',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                      children: [
                        TextSpan(
                          text: viewModel.informationModel?.body ?? '',
                          style: DefaultTextStyle.of(context).style,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ),
          );
        }
      ),
    );
  }
}