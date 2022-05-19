// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:anchor_importer/design/media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

//**
//**method about suggestion get keyboard */
// */

List<String> suggestion(String pattern) => place.where((element) {
      return (element.toLowerCase().contains(pattern.toLowerCase()));
    }).toList();
//**
//*varable
// */
List<String> place = [
  'Sundorbon 9',
  'Sundorbon 10',
  'M V Parikhali',
  'Palikon',
  'Marava',
  'Kheapar',
  'Kokilmoni',
  'Madhumoti'
];
// This will be displayed below the autocomplete field
String? _selectedAnimal;

// This list holds all the suggestions
final List<String> _suggestions = [
  'Alligator',
  'Buffalo',
  'Chicken',
  'Dog',
  'Eagle',
  'Frog'
];
TextEditingController L_port = TextEditingController();

//**
//**dialoge */
//
// */
fleetlist(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) => Dialog(
            child: Scaffold(
              body: port(),
            ),
          ));
}

Padding port() {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: MediaQuerypage.safeBlockHorizontal!,
        vertical: MediaQuerypage.safeBlockVertical!),
    child: Column(
      children: [
        TypeAheadField(
            textFieldConfiguration: TextFieldConfiguration(
                controller: L_port,
                autofocus: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    border: OutlineInputBorder())),
            suggestionsCallback: (pattern) {
              return suggestion(pattern);
            },
            itemBuilder: (context, suggestion) {
              return ListTile(
                leading: Image(
                  image: AssetImage('assets/chat_image.png'),
                ),
                title: Text(suggestion.toString()),
              );
            },
            onSuggestionSelected: (suggestion) {
              L_port.text = suggestion.toString();
            })
      ],
    ),
  );
}
