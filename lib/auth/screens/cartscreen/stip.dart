import 'package:flutter/material.dart';

class stips extends StatelessWidget {
  const stips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      color: Colors.orange.withOpacity(0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Your cart",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("2 items"),
                  )),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.deepOrange, blurRadius: 17)
                    ],
                    color: Colors.deepOrangeAccent.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
      ),
    );
  }
}
