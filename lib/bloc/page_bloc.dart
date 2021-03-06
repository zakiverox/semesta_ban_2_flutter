import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(OnInitialPage());
  @override
  Stream<PageState> mapEventToState(
    PageEvent event,
  ) async* {
    if (event is GoToSpashEvent) {
      yield OnSpalshpage();
    } else if (event is GoToLoginEvent) {
      yield OnLoginPage();
    } else if (event is GoToMainEvent) {
      yield OnMainPage();
    }
  }
}
