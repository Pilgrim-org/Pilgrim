import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class StartPage extends HookWidget{
    const StartPage({super.key});

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body:Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.orange,
                child:const Center(
                    child: Text(
                        'Pilgrim',
                        style:TextStyle(
                            fontFamily:'SourGummy',
                            fontSize: 70,
                            color:Colors.white,
                        ),
                    ),
                )
            )   
        );
    }
}
