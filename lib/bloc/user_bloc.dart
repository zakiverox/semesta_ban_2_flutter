import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:semesta_ban_2/models/models.dart';
import 'package:semesta_ban_2/services/services.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  @override
  UserState get initialState => UserInitial();

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    if (event is LoadUser) {
      User user = await UserServices.getUser(event.id);
      yield UserLoded(user);
    } else if (event is SignOut) {
      yield UserInitial();
    }
  }
}
