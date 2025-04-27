
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:liveness_detection/src/application/passport/passport_actor/passport_actor_bloc.dart';
import 'package:liveness_detection/src/application/passport/passport_form/passport_form_bloc.dart';
import 'package:liveness_detection/src/common/l10n/gen_l10n/app_localizations.dart';
import 'package:liveness_detection/src/presentation/core/app_text_styles.dart';
import 'package:liveness_detection/src/presentation/core/bloc_listeners/passport_actor_listener.dart';
import 'package:liveness_detection/src/presentation/core/gen/assets.gen.dart';
import 'package:liveness_detection/src/presentation/core/widgets/custom_app_bar.dart';
import 'package:liveness_detection/src/presentation/core/widgets/custom_button.dart';
import 'package:liveness_detection/src/presentation/passport/camera/camera_overlay_screen.dart';
import 'package:liveness_detection/src/presentation/passport/widgets/passport_image_field.dart';

class PassportFormScreen extends HookWidget {
  const PassportFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<PassportActorBloc, PassportActorState>(
      listener: passportActorListener,
      child: BlocBuilder<PassportFormBloc, PassportFormState>(
        builder: (context, passportFormState) {
          return Scaffold(
            appBar: CustomAppBar(
              customTitle: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.r),
                child: Assets.icons.signillionLogo.svg(
                  width: 140.r,
                ),
              ),
              centerTitle: false,
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.r,
              ),
              child: Column(
                children: [
                  Gap(60.r),
                  Text(
                    AppLocalizations.of(context)
                        .passport_photo_instruction_form,
                    style: AppTextStyles.notoSans18SemiBold(),
                    textAlign: TextAlign.center,
                  ),
                  Gap(24.r),
                  Row(
                    children: [
                      const Expanded(
                        child: PassportImageField(
                          side: PassportSide.face,
                        ),
                      ),
                      Gap(10.r),
                      const Expanded(
                        child: PassportImageField(
                          side: PassportSide.back,
                        ),
                      ),
                    ],
                  ),
                  if (passportFormState.facePhoto != null) ...[
                    Gap(24.r),
                    Container(
                      height: 240.r,
                      width: 135.r,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: MemoryImage(
                            passportFormState.facePhoto!,
                          ),
                        ),
                      ),
                    ),
                  ],
                  const Spacer(),
                  CustomButton(
                    onTap: passportFormState.frontSide != null &&
                            passportFormState.backSide != null &&
                            passportFormState.facePhoto != null &&
                            passportFormState.confirmationVideo != null
                        ? () {
                            context.read<PassportActorBloc>().add(
                                  PassportActorEvent.continueButtonPressed(
                                    frontSide: passportFormState.frontSide!,
                                    backSide: passportFormState.backSide!,
                                    face: passportFormState.facePhoto!,
                                  ),
                                );
                          }
                        : null,
                    text: AppLocalizations.of(context).continuee,
                  ),
                  Gap(24.r),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
