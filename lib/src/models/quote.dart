import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Quote extends Equatable {
  final String uid;
  final List quotes;

  Quote({
    @required this.uid,
    @required this.quotes,
  });

  @override
  List<Object> get props => [
    uid,
    quotes,
  ];
}
