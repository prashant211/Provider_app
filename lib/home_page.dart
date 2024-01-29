import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider/update_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider App'),
      ),
      body: Center(
        child: Text(
          context.watch<UpdateUser>().value.toString(),
          style: const TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(onPressed:()  {
            context.read<UpdateUser>().increment();
          },child: const Icon(Icons.add),),
           const SizedBox(height: 10.0,),
           FloatingActionButton(onPressed:()  {
            context.read<UpdateUser>().decrement();
          },child: const Icon(Icons.remove),),
        ],
      ),
    );
  }
}
