import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameEditingController = TextEditingController();
  TextEditingController ageEditingController = TextEditingController();
  TextEditingController descriptionEditingController = TextEditingController();

  create() {
    print('Create');
  }

  read() {
    print('Read');
  }

  update() {
    print('Update');
  }

  delete() {
    print('Delete');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crud'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: nameEditingController,
              decoration: const InputDecoration(
                  hintText: 'Name', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: descriptionEditingController,
              decoration: const InputDecoration(
                  hintText: 'Description', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: ageEditingController,
              decoration: const InputDecoration(
                  hintText: 'Price', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red)),
                  onPressed: () {
                    create();
                  },
                  child: const Text('Create'),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.green)),
                  onPressed: () {
                    read();
                  },
                  child: const Text("Read"),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.amberAccent)),
                  onPressed: () {
                    update();
                  },
                  child: const Text('Update'),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.blueAccent)),
                  onPressed: () {
                    delete();
                  },
                  child: const Text('Delete'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
