import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:liveness_detection/src/application/application.dart';
import 'package:liveness_detection/src/common/common.dart';
import 'package:liveness_detection/src/presentation/core/core.dart';
import 'package:liveness_detection/src/presentation/presentation.dart';

class PassportImageField extends StatelessWidget {
  const PassportImageField({
    super.key,
    required this.side,
  });

  final PassportSide side;

  static BorderRadius get _borderRadius => BorderRadius.circular(10.r);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PassportFormBloc, PassportFormState>(
      builder: (context, passportFormState) {
        Uint8List? image;

        if (side == PassportSide.face) {
          image = passportFormState.frontSide;
        } else if (side == PassportSide.back) {
          image = passportFormState.backSide;
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              side == PassportSide.face
                  ? AppLocalizations.of(context).front_side
                  : AppLocalizations.of(context).back_side,
              style: AppTextStyles.notoSans14Regular(),
              textAlign: TextAlign.center,
            ),
            Gap(10.r),
            InkWell(
              onTap: () {
                AppNavigator.push(
                  context,
                  CameraOverlayScreen(
                    side: side,
                  ),
                );
              },
              borderRadius: _borderRadius,
              child: Ink(
                height: .25.sw,
                decoration: BoxDecoration(
                  color: image == null ? AppColors.grayscale100 : null,
                  borderRadius: _borderRadius,
                  image: image != null
                      ? DecorationImage(
                          image: MemoryImage(image),
                        )
                      : null,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (image == null)
                      Assets.icons.camera.svg(
                        width: 24.r,
                        height: 24.r,
                        colorFilter: AppColors.grayscale400.toColorFilter(),
                      ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
