part of 'updatedata_bloc.dart';

@immutable
abstract class UpdatedataState implements Equatable {}

class UpdatedataInitial extends UpdatedataState {
  @override
  // TODO: implement props
  List<Object?> get props => [];

  @override
  // TODO: implement stringify
  bool? get stringify => true;
 
}

class updateLaunch extends UpdatedataState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
  
  @override
  // TODO: implement stringify
  bool? get stringify => true;

 
}

class updateRecive extends UpdatedataState {
   List<List<dynamic>> lstData;

   updateRecive({required this.lstData});
   
     @override
     // TODO: implement props
     List<Object?> get props => [lstData];
     
       @override
       // TODO: implement stringify
       bool? get stringify => true;     
}


abstract class updateDataError extends UpdatedataState {}
