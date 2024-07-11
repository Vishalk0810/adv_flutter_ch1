import 'package:adv_flutter_ch1/screens/lecture%201.5/modal/modal.dart';
import 'package:flutter/material.dart';

import '../../../utils/list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    quoteModalText = QuoteModel.toList(quoteList);

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Quotes'),
      ),
      body: ListView.builder(
        itemCount: quoteList.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            leading: Text('${index + 1}'),
            title: Text(quoteModalText.quoteModelList[index].quote!),
            subtitle: Text(quoteModalText.quoteModelList[index].author!),
            trailing: Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Enter Quotes and Author Name'),
              actions: [
                TextFormField(
                  controller: txtquote,
                  decoration: InputDecoration(
                    hintText: 'Quote',
                    labelText: 'Quote',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1.5),
                    ),
                  ),
                ),
                TextFormField(
                  controller: txtauthor,
                  decoration: InputDecoration(
                    hintText: 'Author',
                    labelText: 'Author',
                      enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1),
                  ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1.5),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(onPressed: () {

                      Navigator.pop(context);

                    }, child: Text('Cancel')),
                    TextButton(onPressed: () {

                      Navigator.pop(context);

                    }, child: Text('Ok')),
                  ],
                )
              ],
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

QuoteModel quoteModalText = QuoteModel();
var txtquote = TextEditingController();
var txtauthor = TextEditingController();
