import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

List<String> items = [];
final GlobalKey<AnimatedListState> animatedKey = GlobalKey();

class _AnimationScreenState extends State<AnimationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Flutter Animation',
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                IconButton(
                  onPressed: () {
                    addItems();
                  },
                  icon: Icon(Icons.add),
                ),
                AnimatedList(
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index, animation) => buildItem(index),
                  shrinkWrap: true,
                  key: animatedKey,
                ),
              ],
            ),
          ),
        ));
  }

  buildItem(index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.deepPurple,
          child: ListTile(
            title: Text(
              items[index],
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
            trailing: IconButton(
              onPressed: () {
                removeItems(index);
              },
              icon: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
  void removeItems(index) {
    animatedKey.currentState!.removeItem(index, (context, animation,) {
      return SizeTransition(
        sizeFactor: animation,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.red,
            child: ListTile(
              title: Text('Delete',style: TextStyle(fontSize: 25.0),),

            ),
          ),
        ),
      );
    },
    duration: Duration(milliseconds: 900),
    );
    items.removeAt(index);
    print(index);
  }

  void addItems() {
    // int i =items.length>0?items.length:0;
    String x = "Item ${items.length + 1}";
    items.insert(0, x);
    animatedKey.currentState!.insertItem(0, duration: Duration(milliseconds: 800),);
    print(items.length);
  }
}
