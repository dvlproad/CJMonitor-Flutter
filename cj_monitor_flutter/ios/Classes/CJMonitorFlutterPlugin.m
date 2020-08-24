#import "CjMonitorFlutterPlugin.h"
#if __has_include(<cj_monitor_flutter/cj_monitor_flutter-Swift.h>)
#import <cj_monitor_flutter/cj_monitor_flutter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "cj_monitor_flutter-Swift.h"
#endif

@implementation CjMonitorFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCjMonitorFlutterPlugin registerWithRegistrar:registrar];
}
@end
