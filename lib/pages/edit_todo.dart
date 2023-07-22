import 'package:flutter/material.dart';

class EditTodoPage extends StatelessWidget {
  const EditTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color.fromARGB(255, 61, 169, 252),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      size: 40,
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: const Text(
                    'TodoRama',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 700,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60),
                  Text(
                    'Name',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter the name'),
                  ),
                  SizedBox(height: 70),
                  Text(
                    'Details',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter the details'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width * 0.45,
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Save',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width * 0.45,
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                    onPressed: () {},
                    child: const Text(
                      'Delete',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
