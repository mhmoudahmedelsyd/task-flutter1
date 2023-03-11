import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeLayout extends StatelessWidget {
  HomeLayout({Key? key}) : super(key: key);
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(33),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.0),
              Text(
                'Notepad',
                style: TextStyle(fontSize: 37.5),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                height: 27,
                width: 308,
                child: TextFormField(
                  controller: searchController,
                  keyboardType: TextInputType.text,
                  maxLines: 1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    label: Text(
                      'Search notes',
                    ),
                    prefixIcon: Icon(Icons.search),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'enter valid text';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                height: 58.0,
                width: 308,
                decoration: BoxDecoration(
                    color: HexColor('#82FFB0'),
                    borderRadius: BorderRadius.circular(16.0)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Todays grocery list',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(height: 3,),
                      Text(
                        'June 26, 2022 08:05 PM',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 58.0,
                width: 308,
                decoration: BoxDecoration(
                    color: HexColor('#FFFB82'),
                    borderRadius: BorderRadius.circular(16.0)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rich dad Poor dad quotes',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(height: 3,),
                      Text(
                        'June 22, 2022 05:00 PM',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.black, size: 35.0),
        onPressed: () {},
      ),
    );
  }
}
