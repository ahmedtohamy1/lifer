import 'package:flutter/material.dart';

class RefreshWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String message;
  const RefreshWidget({
    super.key,
    required this.onPressed,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        IconButton.filled(
          onPressed: onPressed,
          icon: const Icon(Icons.refresh_outlined),
        ),
      ],
    );
  }
}
