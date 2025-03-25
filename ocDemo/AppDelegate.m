#import "AppDelegate.h"
#import "FirstViewController.h"
#import "KmpSuperDeerCoach/KmpSuperDeerCoach.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

  // 创建窗口并设置根视图控制器
  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[FirstViewController alloc] init]];
  [self.window makeKeyAndVisible];

  return YES;
}

@end
