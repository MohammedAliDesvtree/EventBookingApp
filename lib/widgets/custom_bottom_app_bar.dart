import 'package:eventbookingapp/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  CustomBottomAppBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxList<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgNavExplore,
        activeIcon: ImageConstant.imgNavExplore,
        title: "lbl_explore".tr,
        type: BottomBarEnum.Explore,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgNavEvents,
      activeIcon: ImageConstant.imgNavEvents,
      title: "lbl_events".tr,
      type: BottomBarEnum.Events,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavMap,
      activeIcon: ImageConstant.imgNavMap,
      title: "lbl_map".tr,
      type: BottomBarEnum.Map,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavPrfile,
      activeIcon: ImageConstant.imgNavPrfile,
      title: "lbl_prfile".tr,
      type: BottomBarEnum.Prfile,
    )
  ].obs;

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: theme.colorScheme.primary,
        child: SizedBox(
          height: 23.v,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              bottomMenuList.length,
              (index) {
                return InkWell(
                  onTap: () {
                    for (var element in bottomMenuList) {
                      element.isSelected = false;
                    }
                    bottomMenuList[index].isSelected = true;
                    onChanged?.call(bottomMenuList[index].type);
                    bottomMenuList.refresh();
                  },
                  child: bottomMenuList[index].isSelected
                      ? Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: bottomMenuList[index].activeIcon,
                              height: 23.adaptSize,
                              width: 23.adaptSize,
                              color: appTheme.indigoA20003,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: Text(
                                bottomMenuList[index].title ?? "",
                                style: theme.textTheme.bodySmall!.copyWith(
                                  color: appTheme.indigoA20003,
                                ),
                              ),
                            ),
                          ],
                        )
                      : Opacity(
                          opacity: 0.2,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: bottomMenuList[index].icon,
                                height: 23.adaptSize,
                                width: 23.adaptSize,
                                color: appTheme.blueGray800,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text(
                                  bottomMenuList[index].title ?? "",
                                  style: CustomTextStyles.bodySmallBluegray800
                                      .copyWith(
                                    color: appTheme.blueGray800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Explore,
  Events,
  Map,
  Prfile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
