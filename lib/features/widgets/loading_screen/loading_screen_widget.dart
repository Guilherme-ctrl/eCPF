import 'package:flutter/material.dart';


class LoadingScreenWidget extends StatelessWidget {
  final String? message;

  const LoadingScreenWidget({this.message, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.white,
              ),
            ),
            if (message != null)
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  message!,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
