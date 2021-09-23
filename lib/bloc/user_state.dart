part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  const UserState();
}

class UserInitial extends UserState {
  @override
  List<Object> get props => [];
}

class UserLoded extends UserState {
  final User user;
  UserLoded(this.user);
  @override
  List<Object> get props => [];
}
