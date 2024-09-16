import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:npsite/services/sqlite/DB_op.dart';

part 'updatedata_event.dart';
part 'updatedata_state.dart';

class UpdatedataBloc extends Bloc<UpdatedataEvent, UpdatedataState> {

  final DbOp db;

  UpdatedataBloc({required this.db}) : super(UpdatedataInitial()){
       on<loadData>((event, emit) async {
        print('dentro a evento loadData: ${event.version}');
       await getNewUpdate().then((status) {
        print('new time: ${status[0]}');
         if(status[0] as bool) {
          print('nuova versione');
             emit(updateRecive(lstData: []));
             db.updateVersion(status[1] as int);
         }
         else {
          print('versione esistente');
         }
       });
         
      });
  }

  @override
  Stream<UpdatedataState> mapEventToState(
    UpdatedataEvent event,
  ) async* {
    
  }


  Future<List<dynamic>> getNewUpdate() async {
       int lastTime=0;      
       DatabaseReference databaseReference = await FirebaseDatabase.instance.reference().child('lastUpdate');
       return await databaseReference.get().then((value) async {
           lastTime = int.parse(value.value.toString());
       return await db.getLastUpdateTime().then((time) {
        print('time is : ${time != lastTime}  ');
        print('$time >>>> $lastTime');
          if(time != lastTime) {
            return [time != lastTime, lastTime];
          }
          else {
            return [false, 0];
          }
       });
      });

       // return [true, 0];    
  }

}
