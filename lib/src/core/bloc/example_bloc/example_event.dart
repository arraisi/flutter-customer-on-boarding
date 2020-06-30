import 'package:equatable/equatable.dart';

class ExampleEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class PostExample extends ExampleEvent {
  final String username;
  final String password;

  PostExample(this.username, this.password);

  @override
  // TODO: implement props
  List<Object> get props => [username, password];
}

class ResetExample extends ExampleEvent {
  
}