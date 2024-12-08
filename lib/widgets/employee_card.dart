

import 'package:flutter/material.dart';
import 'package:user_management_client_app/models/employee_model.dart';

class EmployeeCard extends StatelessWidget {
  const EmployeeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(scrollDirection: Axis.vertical,
    itemCount: employees.length,

      itemBuilder: (context,index){
        return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Card(
          //color: Colors.yellow[50],
        elevation: 20,
        margin: const EdgeInsets.all(8),
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.blue,width: 2),
          borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        shadowColor: Colors.blue[100],
          child: 
          ListTile(leading:CircleAvatar(backgroundImage: NetworkImage(employees[index].image),),
            title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(employees[index].fullname,style: const TextStyle(color: Colors.blueAccent)),
                          Container(decoration: BoxDecoration(color: const Color.fromARGB(139, 114, 112, 112), borderRadius: BorderRadius.circular(4)),
                            child: Text(employees[index].states,style: const TextStyle(color: Colors.white))),
                          ],),
            subtitle: Column(
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[Text(employees[index].designation),const SizedBox(width: 40,), Text(employees[index].jointdate)],),
                          Row(children: [const Icon(Icons.phone), const SizedBox(width: 20,), Text(employees[index].phone,style: TextStyle(color: Colors.blue,fontSize: 14))],),
                          Row(children: [const Icon(Icons.email),const SizedBox(width: 20,), Text(employees[index].email)],),
                      ],) ,
            trailing: const Icon(Icons.edit),
          ),
        ),
       );        
      });
  }
}