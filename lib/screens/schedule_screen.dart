import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  static const String id = 'schedule_screen';
  static const int index = 0;

  @override
  Widget build(BuildContext context) {
    return scheduleReturn();
  }
}

Material scheduleReturn() {
  List<String> weekList = ['','月', '火', '水', '木', '金', '土',];
  List<Widget> childrenCol = [];
  for(int k = 0; k < 7; k++){
    List<Widget> childrenRow = [];
    for(int i = 0; i < 7; i++){
      childrenRow.add(Expanded(
        flex: i == 0 ? 1 : 3,
        child: Container(
          child: Center(child: k == 0 ?  Text('${weekList[i]}'): Text('i $i, k $k')),
          decoration: BoxDecoration(
            border: i == 0 && k != 0 ? Border.symmetric(
              vertical: BorderSide.none,
              horizontal: BorderSide(color: Colors.grey, width: 1.2,),
            ) : Border.symmetric(
              vertical: BorderSide.none,
              horizontal: BorderSide(color: Colors.grey, width: 1.2, ),
            ),
          ),
        ),
      ),);
    }
    childrenCol.add(Expanded(
      flex: k == 0 ? 1 : 3,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: childrenRow,
      )
    ));
  }
  return Material(
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: childrenCol,
    ),
  );
}

