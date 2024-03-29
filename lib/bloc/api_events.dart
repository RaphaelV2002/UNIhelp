import 'package:unihelp/models/uni.dart';

abstract class ApiEvents {
  const ApiEvents();

  List<Object?> get props => [];
}

class SearchEvent extends ApiEvents {}

class DialogEvent extends ApiEvents {}

class EditProfileEvent extends ApiEvents {
  final String uid;

  const EditProfileEvent(this.uid);

  @override
  List<Object> get props => [uid];
}

class ProfileEvent extends ApiEvents {
  final String uid;

  const ProfileEvent(this.uid);

  @override
  List<Object> get props => [uid];
}

class UnisEvent extends ApiEvents {}

class TypesEvent extends ApiEvents {}

class StartEvent extends ApiEvents {}

class DisciplinesEvent extends ApiEvents {}

class AddWorkEvent extends ApiEvents {}

class ListWorksByFilterEvent extends ApiEvents {
  final String? selectedUni;
  final String? selectedDiscipline;
  final String? selectedType;

  const ListWorksByFilterEvent({
    this.selectedUni,
    this.selectedDiscipline,
    this.selectedType,
  });

  @override
  List<Object?> get props => [selectedUni, selectedDiscipline, selectedType];
}

