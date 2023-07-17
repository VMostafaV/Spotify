import 'package:flutter/material.dart';

import 'Data.dart';

class TestA extends StatefulWidget {
  const TestA({super.key});

  @override
  State<TestA> createState() => _TestAState();
}

class _TestAState extends State<TestA> {
  final List<MList> item = List.from(listItems);
  final listKey = GlobalKey<AnimatedListState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedList(
        key: listKey,
        initialItemCount: item.length,
        itemBuilder: (context, index, animation) {
          return ListItemWidget(
            item: item[index],
            animation: animation,
            onClicked: () {},
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addIcon,
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
    );
  }

  void addIcon() {
    final newIndex = 1;
    //  final newItem = MList(name: 'MyHome');
    // item.insert(newIndex, newItem);
    listKey.currentState!;
  }
}

class ListItemWidget extends StatelessWidget {
  final MList item;
  final Animation<double> animation;
  final VoidCallback? onClicked;
  const ListItemWidget({
    super.key,
    required this.item,
    required this.animation,
    this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      width: 50,
      height: 50,
      color: Colors.green,
      child: ListTile(
        contentPadding: EdgeInsets.all(12),
      ),
    );
  }
}
