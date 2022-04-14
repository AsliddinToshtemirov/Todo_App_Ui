import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          title: const Text(
            "Qaydlar",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )),
      body: Stack(
        children: <Widget>[
          ListView(
            children: [
              myTask("Salom", Colors.cyan),
              myTask("get up", Colors.cyanAccent),
              myTask("hello", Colors.amber),
              myTask("Salom", Colors.cyan),
              myTask("get up", Colors.cyanAccent),
              myTask("hello", Colors.amber),
              myTask("Salom", Colors.cyan),
              myTask("get up", Colors.cyanAccent),
              myTask("hello", Colors.amber),
              myTask("Salom", Colors.cyan),
              myTask("get up", Colors.cyanAccent),
              myTask("hello", Colors.amber)
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: const Color.fromARGB(255, 241, 209, 209),
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 15,
                  ),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: " yangi qayd qo'shish ",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget myTask(String title, Color mycolor) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: Colors.grey.withOpacity(0.5),
      ),
      height: 50,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 10, top: 15),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: mycolor),
                  height: 20,
                  width: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 15),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ],
          ),
          Positioned(
            left: 320,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              height: 50,
              width: 60,
              child: const Center(
                child: Icon(
                  Icons.done,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
