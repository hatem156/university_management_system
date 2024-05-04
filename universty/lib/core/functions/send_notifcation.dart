import 'package:local_notifier/local_notifier.dart';

showNotifcation({required String message}) {
  LocalNotification notification = LocalNotification(
    title: "New message",
    body: message,
    actions: [LocalNotificationAction(text: 'Magdy', type: 'button')],
  );
  // notification.onShow = () {
  //   print('onShow ${notification.identifier}');
  // };
  // notification.onClose = (closeReason) {
  //   // Only supported on windows, other platforms closeReason is always unknown.
  //   switch (closeReason) {
  //     case LocalNotificationCloseReason.userCanceled:
  //       // do something
  //       break;
  //     case LocalNotificationCloseReason.timedOut:
  //       // do something
  //       break;
  //     default:
  //   }
  // };
  // notification.onClick = () {
  //   print('onClick ${notification.identifier}');
  // };
  // notification.onClickAction = (actionIndex) {
  //   print('onClickAction ${notification.identifier} - $actionIndex');
  // };
  notification.show();
}
