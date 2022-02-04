import 'package:flutter/material.dart';
import 'quotes.dart';

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

/*'Be yourself , everyone else is already taken .',
    'I have nothing to declare except my genius.',
    'The truth is rarely pure and never simple.' */

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text: 'Be yourself , everyone else is already taken .',
        author: 'Oscar Wilde'),
    Quote(
        text: 'I have nothing to declare except my genius.',
        author: 'Oscar Wilde'),
    Quote(
        text: 'The truth is rarely pure and never simple. ',
        author: 'Oscar Wilde')
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
