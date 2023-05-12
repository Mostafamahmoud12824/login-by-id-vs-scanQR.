import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'MainScreenState.dart';

class CubitMainScreen extends Cubit<MainScreenState> {
  CubitMainScreen() : super(MainScreenIntialState());
  static CubitMainScreen get(context) => BlocProvider.of(context);

  void enterToProfile({id}) {
    print("keep it");
    emit(getUser());

    /// print("hello");
  }
}
