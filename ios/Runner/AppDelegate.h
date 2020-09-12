#import <Flutter/Flutter.h>
#import <UIKit/UIKit.h>
import Firebase

@interface AppDelegate : FlutterAppDelegate{
 var window: UIWindow?

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
      [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@end
