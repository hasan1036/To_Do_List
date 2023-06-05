import 'package:flutter/material.dart';
import 'package:to_do_list_app/Style.dart';
//
// class ToDoPage extends StatefulWidget {
//   const ToDoPage({Key? key}) : super(key: key);
//
//   @override
//   State<ToDoPage> createState() => _ToDoPageState();
// }
//
// class _ToDoPageState extends State<ToDoPage> {
//   @override
//   Widget build(BuildContext context) {
//
//
//
//     List ToDoList=[];
//     String item="";
//
//
//
//     MyInputOnChange(content){
//       setState(() {
//         item=content;
//       });
//     }
//
//     AddItem(){
//       setState(() {
//         ToDoList.add({'item':item});
//       });
//     }
//
//     RemoveItem(index){
//
//       setState(() {
//         ToDoList.removeAt(index);
//       });
//     }
//
//
//
//     //
//    //  List ToDoList = [];
//    //   //String item = "";
//    //
//    // void MyInputOnChange(content){
//    //
//    // setState(() {
//    //   ToDoList.add({"item":content});
//    //  // item = content;
//    // });
//    //
//    //  }
//
//     // void AddItem() {
//     //   setState(() {
//     //     ToDoList.add({'item': item});
//     //   });
//     //
//     // }
//
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("To Do"),),
//       body: Container(
//         padding: EdgeInsets.all(10),
//         child: Column(
//           children: [
//             Expanded(
//                 flex: 10,
//                 child:Row(
//                   children: [ Expanded(flex: 70, child: TextFormField(onChanged: (content){MyInputOnChange(content);}, decoration: AppInputDecoration("List Item"),)),
//                     Expanded(flex: 20, child: Padding(padding: EdgeInsets.only(left: 5),child: ElevatedButton(onPressed: (){AddItem();},child: Text('Add'),style: AppButtonStyle(),),)),
//                   ],
//                 )),
//             Expanded(
//                 flex: 90,
//                 child:ListView.builder(
//                     itemCount: ToDoList.length,
//                     itemBuilder: (context, index){
//                   return Card(
//                     child: sizedBox50(
//                         Row(
//                           children: [
//                             Expanded(flex: 80, child: Text(ToDoList[index]['item'].toString())),
//                             Expanded(flex: 20, child: TextButton(onPressed: (){RemoveItem(index);},child: Icon(Icons.delete))),
//                           ],
//                         )
//
//                     )
//                   );
//
//                 })
//             )
//           ],
//         ),
//       ),
//
//     );
//   }
//
//
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Style.dart';

class ToDoPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return ToDoPageView();
  }
}

class ToDoPageView extends State<ToDoPage> {

  List ToDoList=[];
  String item="";



  MyInputOnChange(content){
    setState(() {
      item=content;
    });
  }

  AddItem(){
    setState(() {
      ToDoList.add({'item':item});
    });
  }

  RemoveItem(index){

    setState(() {
      ToDoList.removeAt(index);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Todo')),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Expanded(flex: 70, child: TextFormField(onChanged: (content){MyInputOnChange(content);}, decoration: AppInputDecoration("List Item"),)),
                    Expanded(flex: 20, child: Padding(padding: EdgeInsets.only(left: 5),child: ElevatedButton(onPressed: (){AddItem();},child: Text('Add'),style: AppButtonStyle(),),)),
                  ],
                )
            ),
            Expanded(
                flex: 90,
                child: ListView.builder(
                    itemCount: ToDoList.length,
                    itemBuilder: (context,index){
                      return Card(
                          child: SizeBox50(
                              Row(
                                children: [
                                  Expanded(flex: 80, child: Text(ToDoList[index]['item'].toString())),
                                  Expanded(flex: 20, child: TextButton(onPressed: (){RemoveItem(index);},child: Icon(Icons.delete))),
                                ],
                              )
                          )
                      );
                    }
                )
            )
          ],
        ),
      ),
    );
  }


}
