import 'package:flutter/material.dart';
import 'package:pbp_flutter_lab/drawer.dart';
import 'package:pbp_flutter_lab/form.dart';

class MyBudgetData extends StatefulWidget {
  const MyBudgetData({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title = 'Data Budget';

  @override
  State<MyBudgetData> createState() => _MyBudgetData();
}

class _MyBudgetData extends State<MyBudgetData> {
  @override
  Widget build(BuildContext context) {
    List<Budget> _listBudget = MyFormPage.budgetList;

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      drawer: DrawerWidget(),
      body: Center(
        child: Card(
          child: ListView.builder(
              itemCount: _listBudget.length,
              itemBuilder: (context, index) {
                final _budgetItem = _listBudget[index];
                return Card(
                  elevation: 5,
                  child: ListTile(
                    title: Text(_budgetItem.nama),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(_budgetItem.nominal.toString()),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            _budgetItem.tanggal.toString(),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            _budgetItem.jenis,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
