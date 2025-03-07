import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_proj/features/service/cubit_setting/setting_state.dart';

class SettingCubit extends Cubit<SettingState> {
   SettingCubit() : super(SettingInitial());


  void switchValue(bool switchValue) {
    emit(SwitchSuccess(isValueSwitch: switchValue));
  }
  void checkBoxValue(bool checkBoxValue) {
    emit(CheckBoxSuccess(isValueCheck: checkBoxValue));
  }


}

class ButtonTextCubit extends Cubit<ButtonTextState> {
  ButtonTextCubit(super.initialState);
  void buttonText(String text) {
    emit(ButtonTextSuccess(text));
  }
void buttonTextError(String text) {
    emit(ButtonTextError(text));
  }
void buttonTextLoading(String text) {
    emit(ButtonTextLoading(text));

}



}