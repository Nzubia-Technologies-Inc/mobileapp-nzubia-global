import UserNotifications

final class NotificationService: UNNotificationServiceExtension {
    override func didReceive(_ request: UNNotificationRequest, withContentHandler contentHandler: @escaping (UNNotificationContent) -> Void) {
        if let bestAttemptContent = request.content.mutableCopy() as? UNMutableNotificationContent {
            contentHandler(bestAttemptContent)
            return
        }

        contentHandler(request.content)
    }

    override func serviceExtensionTimeWillExpire() {
    }
}