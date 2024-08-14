import "package:flutter/material.dart";

class BoxContainer extends StatelessWidget {
  final String child;

  const BoxContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 100,
        color: Colors.amber,
        child: Center(
          child: Text(
            child,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
