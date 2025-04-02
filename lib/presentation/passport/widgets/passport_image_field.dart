import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:liveness_detection/application/passport/passport_form/passport_form_bloc.dart';
import 'package:liveness_detection/common/l10n/gen_l10n/app_localizations.dart';
import 'package:liveness_detection/presentation/core/app_colors.dart';
import 'package:liveness_detection/presentation/core/app_text_styles.dart';
import 'package:liveness_detection/presentation/core/extensions/color_extension.dart';
import 'package:liveness_detection/presentation/core/gen/assets.gen.dart';
import 'package:liveness_detection/presentation/passport/camera/camera_overlay_screen.dart';
import 'package:liveness_detection/presentation/routes/mobile_auto_router.gr.dart';

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
                context.pushRoute(
                  CameraOverlayRoute(
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
