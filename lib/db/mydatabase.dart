import "package:flutter/material.dart";

class Book with ChangeNotifier {
  final String id;
  final String name;
  final String cover;
  final String author;
  final String category;
  final int price;

  Book ({
    required this.id,
    required this.name,
    required this.cover,
    required this.author,
    required this.category,
    required this.price
  });
}

class Books with ChangeNotifier {
   List <Book> items = [
      Book(
        id:"1", 
        name:"Zero To One", 
        cover:"", 
        author:"Peter theil", 
        category:"Bussiness", 
        price:350,
        ),
      Book(
        id:"2",
        name:"Think and grow rich",
        cover:"",
        author:"Neoplean Hill",
        category:"Philiosophy",
        price:440,
      ),
   ];
 
  List <Book> getAllItems(){
    return [...items];
  }
}