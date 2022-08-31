import 'package:flutter/material.dart';

class search extends StatefulWidget {


  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



class customsearch extends SearchDelegate {
  List<String> searchTerms =[
    'indoor',
    'outdoor'
    'contact'
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: const Icon(Icons.clear),
        onPressed: (){query=''; }

      ),
    ];
  }


  @override
  Widget buildLeading(BuildContext context) {
    return (
    IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          close(context, num);
        },
    )
    );
  }
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery =[];
    for (var plant in searchTerms){
      if (plant.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(plant);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
    itemBuilder:(context,index)
    {
      var result =matchQuery[index];
      return ListTile(
        title: Text(result),
      );
    },
    );
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery =[];
    for (var plant in searchTerms){
      if (plant.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(plant);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder:(context,index)
      {
        var result =matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }


}