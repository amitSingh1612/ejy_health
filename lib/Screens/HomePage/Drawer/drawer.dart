import 'package:ejy_health/Screens/HomePage/Drawer/Account/account.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Column(
children: [
  DrawerHeader(

      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:[
              Theme.of(context).colorScheme.primaryContainer,
              Colors.red.withOpacity(0.4),
              Colors.yellow.withOpacity(0.2),
              Theme.of(context).colorScheme.primaryContainer.withOpacity(0.9),
            ] ,
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          )
      ),
      child:Row(
        children: const [
          Text(" AMIT SINGH")
        ],
      ),
  ),
  ListTile(leading: const Icon(Icons.person,size: 28,),
          title:Text(" My Account",style: Theme.of(context).textTheme.titleSmall!.copyWith(
   //fontWeight: FontWeight.bold,
     fontSize: 21),),
    onTap: (){
Navigator.push(context,
    MaterialPageRoute(builder:(context)=> const Account()));
    },
 ),
],
      ),
    );
  }
}
