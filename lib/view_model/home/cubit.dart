import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled12/view_model/home/states.dart';

class HomeCubit extends Cubit<HomeStates>
{
  HomeCubit(super.initialState);
  HomeCubit getInstance(context) => BlocProvider.of(context);

  
}