part of 'updatedata_bloc.dart';

@immutable
abstract class UpdatedataEvent implements Equatable{}

class loadData extends UpdatedataEvent {

 String version;  

  loadData({required this.version});
  
  @override
  // TODO: implement props
  List<Object?> get props => [version];
  
  @override
  // TODO: implement stringify
  bool? get stringify => false;

}
