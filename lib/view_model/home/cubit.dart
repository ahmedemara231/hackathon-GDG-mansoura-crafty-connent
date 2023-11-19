import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled12/view_model/home/states.dart';

class HomeCubit extends Cubit<HomeStates>
{
  HomeCubit(super.initialState);
  static HomeCubit getInstance(context) => BlocProvider.of(context);

  int currentIndex = 0;
  void changeIndex(int newIndex)
  {
    currentIndex = newIndex;
    emit(ChangeIndexSuccessState());
  }
  
}