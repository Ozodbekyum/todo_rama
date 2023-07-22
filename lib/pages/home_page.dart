import 'package:flutter/material.dart';
import 'package:todo_rama/pages/new_todo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            color: const Color.fromARGB(255, 61, 169, 252),
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
              const  SizedBox(height: 20),
                const Center(
                  child: Text(
                    'TodoRama',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: TextField(
                    cursorColor: Colors.white,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor:const Color.fromARGB(255, 134, 194, 244),
                      suffixIcon: InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              )),
                          height: 30,
                          width: 130,
                          child: const Center(
                              child: Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          )),
                        ),
                      ),
                      hintStyle:const TextStyle(color: Colors.white, fontSize: 15),
                      hintText: '\tSearch',
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(28),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 600,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 61, 169, 252),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>const NewTodoPage(),
              ));
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
