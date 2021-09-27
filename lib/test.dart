import 'package:flutter/material.dart';

class TESTUI extends StatelessWidget {
  const TESTUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.05,
          ),
          Expanded(
            child: Row(
              children: [
                Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good evening"),
                      Text(" dhhhhhhhhhhhhhhhhhhfjfkdjfkdjkfsjkdsj hfghhhhhgh"),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: width * 0.2,
                  height: height * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return Container(
                    height: 2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  );
                },
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: width * 0.2,
                    height: height * 0.1,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
