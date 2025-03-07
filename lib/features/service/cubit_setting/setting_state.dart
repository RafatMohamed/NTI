class SettingState{
  final bool isValueSwitch;
  final bool isValueCheck ;
  SettingState({
    this.isValueSwitch=false,
    this.isValueCheck=false
  });
}

class SettingInitial extends SettingState{}

class SwitchSuccess extends SettingState{
  SwitchSuccess({
     super.isValueSwitch,
  });
}

class CheckBoxSuccess extends SettingState{
  CheckBoxSuccess({
     super.isValueCheck,
  });
}

class ButtonTextState{
  String text;
  ButtonTextState(this.text);
}

class ButtonTextInitial extends ButtonTextState{
  ButtonTextInitial(super.text);
}

class ButtonTextSuccess extends ButtonTextState{
  ButtonTextSuccess(super.text);
}

class ButtonTextError extends ButtonTextState{
  ButtonTextError(super.text);
}

class ButtonTextLoading extends ButtonTextState{
  ButtonTextLoading(super.text);
}