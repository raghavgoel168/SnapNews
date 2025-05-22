// import 'package:flutter/material.dart';
//
// class Header extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Text('Dashboard', style: Theme.of(context).textTheme.titleLarge),
//         Spacer(),
//         SizedBox(
//           width: 200,
//           child: TextField(
//             decoration: InputDecoration(
//               hintText: 'Search',
//               suffixIcon: Icon(Icons.search),
//               border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
//             ),
//           ),
//         ),
//         SizedBox(width: 16),
//         CircleAvatar(child: Icon(Icons.person)),
//         SizedBox(width: 8),
//         Text("Angelina Joli")
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Dashboard', style: Theme.of(context).textTheme.titleLarge),
        Spacer(),
        SizedBox(
          width: 200,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ),
        SizedBox(width: 16),
        CircleAvatar(child: Icon(Icons.person)),
        SizedBox(width: 8),
        Text("Angelina Joli")
      ],
    );
  }
}
