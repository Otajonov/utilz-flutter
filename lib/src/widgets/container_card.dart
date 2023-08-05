import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {

  final double padding;
  final double margin;

  final String title;
  final List<Widget> actions;
  final Widget child;

  const ContainerCard({super.key,
    this.padding = 10.0,
    this.margin = 5.0,
    this.actions = const [],
    this.title = "",
    this.child = const SizedBox(),


  });

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(padding),
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [


          if (title.isNotEmpty && actions.isNotEmpty)
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

            Text(title, style: const TextStyle(fontWeight: FontWeight.bold) ),

            Row( children: actions ),

          ]
          ),

          child



        ],
      ),
    );
  }
}
