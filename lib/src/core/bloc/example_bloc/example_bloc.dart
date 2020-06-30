import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabeldatafluttertemplate/src/core/bloc/example_bloc/example_event.dart';
import 'package:tabeldatafluttertemplate/src/core/bloc/example_bloc/example_state.dart';
import 'package:tabeldatafluttertemplate/src/core/services/example_service.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleService exampleService;
  ExampleBloc({@required this.exampleService}) : assert(exampleService != null);

  @override
  // TODO: implement initialState
  ExampleState get initialState => ExampleInitial();

  @override
  Stream<ExampleState> mapEventToState(ExampleEvent event) async* {
    if (event is PostExample) {
      yield ExampleLoading();

      var response = await exampleService.postLogin(event.username, event.password);
      yield response.fold(
              (errorMessage) => ExampleFailed(errorMessage),
              (data) => ExampleSuccess(data),
      );
    }
  }
}