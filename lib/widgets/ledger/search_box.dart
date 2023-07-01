import 'package:flutter/material.dart';

import '../../constants.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kHighLightColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: const Row(
        children: [
          SizedBox(width: 15.0),
          Icon(Icons.search),
          SizedBox(width: 10.0),
          Text(
            'Search or Add',
            style: TextStyle(fontSize: 16.0),
          )
        ],
      ),
    );
  }
}
