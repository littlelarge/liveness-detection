import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';
import 'package:liveness_detection/src/presentation/core/core.dart';
import 'package:liveness_detection/src/presentation/core/mappers/otp_failure_mapper.dart';
import 'package:liveness_detection/src/presentation/core/widgets/custom_scaffold.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends HookWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pinController = useTextEditingController();
    final previosRoute = useState<String?>('');

    return Builder(
      builder: (context) {
        return BlocConsumer<OtpBloc, OtpState>(
          listener: (context, otpState) {
            otpState.checkResult?.fold(
              (l) {
                Utils.showSnackBar(
                  context: context,
                  text: l.autoMap(
                    context: context,
                  ),
                );
              },
              (r) {
                AppNavigator.pushAndRemoveUntil(
                  context,
                  const WebViewScreen(),
                  predicate: (route) {
                    if (previosRoute.value == null) {
                      return true;
                    }

                    previosRoute.value = route.settings.name;

                    return false;
                  },
                );
              },
            );
          },
          builder: (context, otpState) {
            return CustomScaffold(
              appBar: const CustomAppBar(),
              body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(40.r),
                  child: otpState.sendResult != null
                      ? otpState.sendResult!.fold(
                          (l) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Произошла ошибка при отправке смс с кодом. Пожалуйста, попробуйте еще раз.',
                                  style: AppTextStyles.notoSans20Bold(),
                                  textAlign: TextAlign.center,
                                ),
                                Gap(20.r),
                                CustomButton(
                                  text: 'Отправить код еще раз',
                                  onTap: () {
                                    context.read<OtpBloc>().add(
                                          const OtpEvent.codeSended(),
                                        );
                                  },
                                ),
                              ],
                            );
                          },
                          (r) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Spacer(),
                                Text(
                                  'Подтвердите смс код',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.notoSans24SemiBold(
                                    color: AppColors.primaryText,
                                  ),
                                ),
                                Gap(4.r),
                                Text(
                                  'На ваш номер отправлен смс с 6-и значным кодом.\nВведите код из смс в поле ниже.',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.notoSans16SemiBold(),
                                ),
                                Gap(20.r),
                                PinCodeTextField(
                                  appContext: context,
                                  length: 6,
                                  controller: pinController,
                                  onChanged: (value) {},
                                  onCompleted: (value) {},
                                  pinTheme: PinTheme(
                                    shape: PinCodeFieldShape.box,
                                    borderRadius: BorderRadius.circular(8.r),
                                    fieldHeight: 50.r,
                                    fieldWidth: 50.r,
                                    activeColor: AppColors.primary,
                                    inactiveColor: AppColors.grayscale100,
                                    selectedColor: AppColors.primary,
                                    activeFillColor: AppColors.white,
                                    inactiveFillColor: AppColors.white,
                                    selectedFillColor: AppColors.white,
                                  ),
                                  keyboardType: TextInputType.number,
                                  animationType: AnimationType.fade,
                                  animationDuration:
                                      const Duration(milliseconds: 300),
                                  enableActiveFill: true,
                                  cursorColor: AppColors.primary,
                                ),
                                const Spacer(),
                                CustomButton(
                                  text: 'Продолжить',
                                  onTap: () {
                                    context.read<OtpBloc>().add(
                                          OtpEvent.codeChecked(
                                            code: pinController.text,
                                          ),
                                        );
                                  },
                                ),
                              ],
                            );
                          },
                        )
                      : const Center(
                          child: CircularProgressIndicator(),
                        ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
