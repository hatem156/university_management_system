import '../../../controllers/emp/emp_controller.dart';
import '../../../core/localization/change_language_controller.dart';
import '../../../libraries.dart';
import '../../widgets/my_side/my_side_bar.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({
    Key? key,
    required this.route,
    required this.body,
  }) : super(key: key);

  final Widget body;
  final String route;
  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      appBar: AppBar(actions: [ProfileIcon()]),
      sideBar: SideBar(
        iconColor: AppColorManger.sideBarIcon,
        backgroundColor: AppColorManger.primary,
        borderColor: const Color.fromARGB(255, 23, 31, 38),
        textStyle: Get.textTheme.displayMedium!
            .copyWith(color: AppColorManger.sideBarIcon),
        activeBackgroundColor: Colors.black26,
        activeIconColor: Colors.yellowAccent,
        activeTextStyle: Get.textTheme.displayLarge!.copyWith(
          color: Colors.yellowAccent,
        ),
        items: mySideBar(),
        selectedRoute: route,
        onSelected: (item) {
          if (item.route != null && item.route != route) {
            Get.offAllNamed(item.route!);
          }
        },
        header: Container(
          padding: EdgeInsets.all(AppSizes.h02),
          color: AppColorManger.primary,
          width: double.infinity,
          child: CircleAvatar(
            radius: AppSizes.h1,
            backgroundColor: AppColorManger.primary,
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      body: body,
    );
  }
}

class ProfileIcon extends StatelessWidget {
  ProfileIcon({
    super.key,
  });

  final EmpControllerImp usersController = Get.find<EmpControllerImp>();
  final ChangeLanguageController languageController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          EmpControllerImp.empName ?? '',
          style: context.textTheme.displayMedium!.copyWith(color: Colors.white),
        ),
        PopupMenuButton(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.account_circle,
              size: AppSizes.h04,
              color: AppColorManger.white,
            ),
          ),
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Row(
                  children: [
                    const Icon(
                      Icons.person,
                      color: AppColorManger.primary,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        AppStrings.profile.tr,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                enabled: true,
                onTap: () {
                  usersController.logOut();
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.exit_to_app,
                      color: AppColorManger.primary,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        AppStrings.logOut.tr,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                enabled: true,
                onTap: () {
                  languageController.changeLanguage();
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.language,
                      color: AppColorManger.primary,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        AppStrings.language.tr,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //  changeLanguage
            ];
          },
        ),
      ],
    );
  }
}
