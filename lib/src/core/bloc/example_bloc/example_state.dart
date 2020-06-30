import 'package:equatable/equatable.dart';
import 'package:tabeldatafluttertemplate/src/core/models/example_model.dart';

class ExampleState extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class ExampleInitial extends ExampleState {

}

class ExampleLoading extends ExampleState {

}

class ExampleFailed extends ExampleState {
  final String errorMessage;
  ExampleFailed(this.errorMessage);
}

class ExampleSuccess extends ExampleState {
  final _data;
  ExampleSuccess(this._data);
  AuthenticationModel get value => _data;

  @override
  // TODO: implement props
  List<Object> get props => [_data];
}