import 'package:eventbookingapp/presentation/splash_screen/splash_screen.dart';
import 'package:eventbookingapp/presentation/splash_screen/binding/splash_binding.dart';
import 'package:eventbookingapp/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:eventbookingapp/presentation/onboarding_one_screen/binding/onboarding_one_binding.dart';
import 'package:eventbookingapp/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:eventbookingapp/presentation/onboarding_two_screen/binding/onboarding_two_binding.dart';
import 'package:eventbookingapp/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:eventbookingapp/presentation/onboarding_three_screen/binding/onboarding_three_binding.dart';
import 'package:eventbookingapp/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:eventbookingapp/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:eventbookingapp/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:eventbookingapp/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:eventbookingapp/presentation/verification_screen/verification_screen.dart';
import 'package:eventbookingapp/presentation/verification_screen/binding/verification_binding.dart';
import 'package:eventbookingapp/presentation/resset_password_screen/resset_password_screen.dart';
import 'package:eventbookingapp/presentation/resset_password_screen/binding/resset_password_binding.dart';
import 'package:eventbookingapp/presentation/menu_white_screen/menu_white_screen.dart';
import 'package:eventbookingapp/presentation/menu_white_screen/binding/menu_white_binding.dart';
import 'package:eventbookingapp/presentation/home_container_screen/home_container_screen.dart';
import 'package:eventbookingapp/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:eventbookingapp/presentation/event_details_screen/event_details_screen.dart';
import 'package:eventbookingapp/presentation/event_details_screen/binding/event_details_binding.dart';
import 'package:eventbookingapp/presentation/map_view_screen/map_view_screen.dart';
import 'package:eventbookingapp/presentation/map_view_screen/binding/map_view_binding.dart';
import 'package:eventbookingapp/presentation/search_white_bar_screen/search_white_bar_screen.dart';
import 'package:eventbookingapp/presentation/search_white_bar_screen/binding/search_white_bar_binding.dart';
import 'package:eventbookingapp/presentation/empty_events_tab_container_screen/empty_events_tab_container_screen.dart';
import 'package:eventbookingapp/presentation/empty_events_tab_container_screen/binding/empty_events_tab_container_binding.dart';
import 'package:eventbookingapp/presentation/see_all_events_screen/see_all_events_screen.dart';
import 'package:eventbookingapp/presentation/see_all_events_screen/binding/see_all_events_binding.dart';
import 'package:eventbookingapp/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:eventbookingapp/presentation/my_profile_screen/binding/my_profile_binding.dart';
import 'package:eventbookingapp/presentation/organizer_profile_about_tab_container_screen/organizer_profile_about_tab_container_screen.dart';
import 'package:eventbookingapp/presentation/organizer_profile_about_tab_container_screen/binding/organizer_profile_about_tab_container_binding.dart';
import 'package:eventbookingapp/presentation/empty_notification_screen/empty_notification_screen.dart';
import 'package:eventbookingapp/presentation/empty_notification_screen/binding/empty_notification_binding.dart';
import 'package:eventbookingapp/presentation/notification_screen/notification_screen.dart';
import 'package:eventbookingapp/presentation/notification_screen/binding/notification_binding.dart';
import 'package:eventbookingapp/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:eventbookingapp/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String verificationScreen = '/verification_screen';

  static const String ressetPasswordScreen = '/resset_password_screen';

  static const String menuWhiteScreen = '/menu_white_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String eventDetailsScreen = '/event_details_screen';

  static const String mapViewScreen = '/map_view_screen';

  static const String searchWhiteBarScreen = '/search_white_bar_screen';

  static const String emptyEventsPage = '/empty_events_page';

  static const String emptyEventsTabContainerScreen =
      '/empty_events_tab_container_screen';

  static const String seeAllEventsScreen = '/see_all_events_screen';

  static const String myProfileScreen = '/my_profile_screen';

  static const String organizerProfileAboutPage =
      '/organizer_profile_about_page';

  static const String organizerProfileAboutTabContainerScreen =
      '/organizer_profile_about_tab_container_screen';

  static const String organizerProfileEventPage =
      '/organizer_profile_event_page';

  static const String organizerProfileReviewPage =
      '/organizer_profile_review_page';

  static const String emptyNotificationScreen = '/empty_notification_screen';

  static const String notificationScreen = '/notification_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onboardingOneScreen,
      page: () => OnboardingOneScreen(),
      bindings: [
        OnboardingOneBinding(),
      ],
    ),
    GetPage(
      name: onboardingTwoScreen,
      page: () => OnboardingTwoScreen(),
      bindings: [
        OnboardingTwoBinding(),
      ],
    ),
    GetPage(
      name: onboardingThreeScreen,
      page: () => OnboardingThreeScreen(),
      bindings: [
        OnboardingThreeBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: verificationScreen,
      page: () => VerificationScreen(),
      bindings: [
        VerificationBinding(),
      ],
    ),
    GetPage(
      name: ressetPasswordScreen,
      page: () => RessetPasswordScreen(),
      bindings: [
        RessetPasswordBinding(),
      ],
    ),
    GetPage(
      name: menuWhiteScreen,
      page: () => MenuWhiteScreen(),
      bindings: [
        MenuWhiteBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: eventDetailsScreen,
      page: () => EventDetailsScreen(),
      bindings: [
        EventDetailsBinding(),
      ],
    ),
    GetPage(
      name: mapViewScreen,
      page: () => MapViewScreen(),
      bindings: [
        MapViewBinding(),
      ],
    ),
    GetPage(
      name: searchWhiteBarScreen,
      page: () => SearchWhiteBarScreen(),
      bindings: [
        SearchWhiteBarBinding(),
      ],
    ),
    GetPage(
      name: emptyEventsTabContainerScreen,
      page: () => EmptyEventsTabContainerScreen(),
      bindings: [
        EmptyEventsTabContainerBinding(),
      ],
    ),
    GetPage(
      name: seeAllEventsScreen,
      page: () => SeeAllEventsScreen(),
      bindings: [
        SeeAllEventsBinding(),
      ],
    ),
    GetPage(
      name: myProfileScreen,
      page: () => MyProfileScreen(),
      bindings: [
        MyProfileBinding(),
      ],
    ),
    GetPage(
      name: organizerProfileAboutTabContainerScreen,
      page: () => OrganizerProfileAboutTabContainerScreen(),
      bindings: [
        OrganizerProfileAboutTabContainerBinding(),
      ],
    ),
    GetPage(
      name: emptyNotificationScreen,
      page: () => EmptyNotificationScreen(),
      bindings: [
        EmptyNotificationBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
