import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /*       GifView.asset(
            AppAssets.loading,
            colorBlendMode: BlendMode.srcIn,
            height: 0.4.sh,
            width: 0.8.sw,
            frameRate: 30,
          ), */
        ],
      ),
    );
  }
}
