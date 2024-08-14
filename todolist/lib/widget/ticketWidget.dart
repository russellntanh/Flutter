import 'package:flutter/material.dart';

class taskWidget extends StatelessWidget {
  const taskWidget({
    super.key,
    required this.taskName,
  });

  final String taskName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: const Color(0xffDFDFDF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              taskName,
              style: TextStyle(
                color: const Color(0xff4B4B4B),
                fontSize: 20,
              ),
            ),
            Icon(
              Icons.delete,
              color: Color(0xff4B4B4B),
            ),
          ],
        ),
      ),
    );
  }
}
