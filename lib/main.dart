import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() => runApp(const MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

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
        author: 'Oscar Wilde'),
    Quote(
        author: 'El Capone',
        text:
            'You can go a long way with a smile. You can go a lot farther with a smile and a gun.'),
    Quote(
        text: 'Courage is grace under pressure. .', author: 'Ernest Hemingway'),
  ];

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
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
