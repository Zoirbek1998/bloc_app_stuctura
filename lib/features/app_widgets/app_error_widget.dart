import 'package:bloc_app_stuctura/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../core/error/error_object.dart';

class AppErrorWidget extends StatelessWidget {
  final ErrorObject errorObject;

  const AppErrorWidget({super.key, required this.errorObject});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Lottie.asset(Assets.lottieNotFound, width: size.width, height: size.height*0.4),
            const SizedBox(height: 6),
            Text(errorObject.title,
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 4),
            Text(errorObject.message,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
    ;
  }
}
