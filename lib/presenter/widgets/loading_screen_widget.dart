import 'package:flutter/material.dart';
import 'package:pai_de_pet/presenter/widgets/tab_title_widget.dart';

import '../../core/theme/app_color.dart';

class LoadingScreenWidget extends StatelessWidget {
  const LoadingScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            TabTitleWidget(),
            SizedBox(height: 20),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              color: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}
