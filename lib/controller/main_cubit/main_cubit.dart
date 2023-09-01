import 'package:flutter_bloc/flutter_bloc.dart';

MainCubit mainCubit = MainCubit();

class MainCubit extends Cubit<int> {
  MainCubit() : super(0);

  changeTab(int index) {
    emit(index);
  }
}
