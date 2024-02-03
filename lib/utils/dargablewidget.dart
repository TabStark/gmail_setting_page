import 'package:flutter/material.dart';

class DraggableExample extends StatefulWidget {
  const DraggableExample({super.key});

  @override
  State<DraggableExample> createState() => _DraggableExampleState();
}

class _DraggableExampleState extends State<DraggableExample> {
  Color color = Colors.white;
  List<Color> colorful = [
    Colors.yellow,
    Colors.orange,
    Colors.red,
    Colors.purple,
    Colors.blue,
    Colors.green
  ];
  List<Color?> blank = [
    null,
    null,
    null,
    null,
    null,
    null,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  DragTarget<Color>(
                    onAccept: (data) {
                      setState(() => blank[index] = data);
                    },
                    builder: (context, candidateData, rejectedData) => Icon(
                      Icons.star,
                      color: blank[index] ?? Colors.white,
                    ),
                  ),
                  IgnorePointer(
                    ignoring: blank[index] != null,
                    child: Opacity(
                      opacity: blank[index] != null ? 0 : 1,
                      child: Draggable<Color>(
                        data: colorful[index],
                        feedback: Icon(
                          Icons.star,
                          color: colorful[index],
                        ),
                        child: Icon(
                          Icons.star,
                          color: colorful[index],
                        ),
                      ),
                    ),
                  )
                ],
              );
            }));
  }
}
