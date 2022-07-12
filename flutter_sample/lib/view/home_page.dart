import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_model/home_notifier.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    final homeNotifier = ref.read(homeProvider.notifier);

    Timer.periodic(const Duration(seconds: 1), homeNotifier.getTime);
  }

  @override
  Widget build(BuildContext context) {
    final homeState = ref.watch(homeProvider);
    final homeNotifier = ref.watch(homeProvider.notifier);

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(top: 0),
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(leading: const Icon(Icons.account_box), title: const Text("Google Sign In"), onTap: () {}),
            ListTile(leading: const Icon(Icons.account_circle), title: const Text("Firebase Auth"), onTap: () {}),
            ListTile(leading: const Icon(Icons.crop_original), title: const Text("Firestore,CloudVision"), onTap: () {}),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),
            title: const Text('Welcome to Hokkaido'),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
            ],
            flexibleSpace: Image.network(
              'https://images.unsplash.com/photo-1514186077719-5f31a164c12e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2531&q=80',
              fit: BoxFit.cover,
            ),
            toolbarHeight: 50,
            collapsedHeight: 50,
            expandedHeight: 200,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 400,
                  width: 400,
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
                  child: Card(
                    elevation: 5,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'You have pushed the button this many times:',
                          ),
                          Text(
                            '${homeState.count}',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 400,
                  width: 400,
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
                  child: Card(
                    elevation: 5,
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            homeState.selectData,
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Wrap(
                            spacing: 5,
                            children: [
                              for (int i = 0; i < homeState.chipText.length; i++)
                                ChoiceChip(
                                  label: Text(
                                    homeState.chipText[i],
                                  ),
                                  selected: homeState.choiceIndex == i,
                                  onSelected: (bool selected) {
                                    homeNotifier.selectChip(selected, i);
                                  },
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 400,
                  width: 400,
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
                  child: Card(
                    elevation: 5,
                    child: Center(
                      child: Text(
                        homeState.time,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 400,
                  width: 400,
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
                  child: Card(
                    elevation: 5,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ChoiceChip(
                            label: const Text(
                              '編集',
                            ),
                            selected: homeState.isEditable,
                            selectedColor: Colors.red[300],
                            onSelected: (bool selected) {
                              homeNotifier.editSelect(selected);
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 200,
                            child: TextField(
                              enabled: homeState.isEditable,
                              maxLength: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 400,
                  width: 400,
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
                  child: Card(
                    elevation: 5,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'You have pushed the button this many times:',
                          ),
                          Text(
                            '${homeState.count}',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 400,
                  width: 400,
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
                  child: Card(
                    elevation: 5,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'You have pushed the button this many times:',
                          ),
                          Text(
                            '${homeState.count}',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 400,
                  width: 400,
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
                  child: Card(
                    elevation: 5,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'You have pushed the button this many times:',
                          ),
                          Text(
                            '${homeState.count}',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: homeNotifier.increaseCount,
        child: const Icon(Icons.add),
      ),
    );
  }
}
