import 'package:dartz/dartz.dart';
import 'package:finca/domain/core/value_failures.dart';
import 'package:finca/domain/core/value_objects.dart';
import 'package:finca/domain/core/value_transformers.dart';
import 'package:finca/domain/core/value_validators.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class CategoryName extends ValueObject<String> {
  // static const List<String> predefinedNames = [
  //   'salary',
  //   'food',
  //   'grocery',
  //   'shopping',
  //   'transportaion',
  //   'fuel',
  //   'cloth',
  //   'phone',
  //   'wifi',
  //   'water',
  //   'film',
  //   'concert',
  //   'hospital',
  //   'medicine',
  //   'cat food',
  //   'records',
  //   'television',
  //   'motel',
  // ];
  @override
  final Either<ValueFailure<String>, String> value;

  factory CategoryName(String input) {
    assert(input != null);
    return CategoryName._(validateInputNotEmpty(input));
  }
  const CategoryName._(this.value);
}

// class CategoryIcon extends ValueObject<IconData> {
//   static const List<IconData> predefinedIcons = [
//     LineIcons.moneyCheck, //salary
//     LineIcons.hamburger, //food
//     LineIcons.shoppingCart, // grocery
//     LineIcons.shoppingBag, // shopping
//     LineIcons.train, // transportaion
//     LineIcons.gasPump, // fuel
//     LineIcons.tShirt, // cloth
//     LineIcons.mobilePhone, // phone
//     LineIcons.wifi, // wifi,
//     LineIcons.water, // water
//     LineIcons.film, // film
//     LineIcons.alternateTicket, // concert,
//     LineIcons.hospital, // hospital,
//     LineIcons.pills, // medicine,
//     LineIcons.cat, // cat food,
//     LineIcons.music, // records,
//     LineIcons.television, // television,
//     LineIcons.airbnb, // motel,
//   ];
//   @override
//   final Either<ValueFailure<IconData>, IconData> value;

//   factory CategoryIcon(IconData input) {
//     assert(input != null);
//     return CategoryIcon._(
//       right(input),
//     );
//   }
//   const CategoryIcon._(this.value);
// }

// class CategoryColor extends ValueObject<Color> {
//   static const List<Color> predefinedColors = [
//     Colors.red,
//     Colors.purple,
//     Colors.deepPurple,
//     Colors.indigo,
//     Colors.blue,
//     Colors.lightBlue,
//     Colors.cyan,
//     Colors.pink,
//     Colors.teal,
//     Colors.green,
//     Colors.lightGreen,
//     Colors.lime,
//     Colors.yellow,
//     Colors.amber,
//     Colors.orange,
//     Colors.deepOrange,
//     Colors.brown,
//     Colors.tealAccent ,
//   ];

//   @override
//   final Either<ValueFailure<Color>, Color> value;

//   factory CategoryColor(Color input) {
//     assert(input != null);
//     return CategoryColor._(
//       right(makeColorOpaque(input)),
//     );
//   }
//   const CategoryColor._(this.value);
// }
