import '../../../libraries.dart';

class ColorsDetailsWidget extends StatelessWidget {
  const ColorsDetailsWidget({super.key, required this.kind});
  final int kind;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: AppSizes.w3,
      child: kind == 1
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          backgroundColor: AppColorManger.grey,
                          radius: 8,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          AppStrings.billOut.tr,
                          style: context.textTheme.displayLarge,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          backgroundColor: AppColorManger.grey,
                          radius: 8,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          AppStrings.backBillOut.tr,
                          style: context.textTheme.displayLarge,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          backgroundColor: AppColorManger.grey,
                          radius: 8,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          AppStrings.add.tr,
                          style: context.textTheme.displayLarge,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          backgroundColor: AppColorManger.grey,
                          radius: 8,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          AppStrings.fix.tr,
                          style: context.textTheme.displayLarge,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          backgroundColor: AppColorManger.grey,
                          radius: 8,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          AppStrings.bikeBillOut.tr,
                          style: context.textTheme.displayLarge,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          backgroundColor: AppColorManger.grey,
                          radius: 8,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          AppStrings.backBillInBike.tr,
                          style: context.textTheme.displayLarge,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          : kind == 2
              ? Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2,
                      color: AppColorManger.grey,
                    ),
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: AppSizes.w01,
                    vertical: AppSizes.w01,
                  ),
                  padding: EdgeInsets.only(
                    top: AppSizes.w01,
                    right: AppSizes.w01,
                    left: AppSizes.w01,
                  ),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppStrings.billOut.tr,
                                style: context.textTheme.displayLarge,
                              ),
                              const CircleAvatar(
                                backgroundColor: AppColorManger.grey,
                                radius: 8,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppStrings.backBillOut.tr,
                                style: context.textTheme.displayLarge,
                              ),
                              const CircleAvatar(
                                backgroundColor: AppColorManger.grey,
                                radius: 8,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppStrings.add.tr,
                                style: context.textTheme.displayLarge,
                              ),
                              const CircleAvatar(
                                backgroundColor: AppColorManger.grey,
                                radius: 8,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppStrings.fix.tr,
                                style: context.textTheme.displayLarge,
                              ),
                              const CircleAvatar(
                                backgroundColor: AppColorManger.grey,
                                radius: 8,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppStrings.bikeBillOut.tr,
                                style: context.textTheme.displayLarge,
                              ),
                              const CircleAvatar(
                                backgroundColor: AppColorManger.grey,
                                radius: 8,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppStrings.backBillInBike.tr,
                                style: context.textTheme.displayLarge,
                              ),
                              const CircleAvatar(
                                backgroundColor: AppColorManger.grey,
                                radius: 8,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              : Container(),
    );
  }
}
