#import "CJMonitorFlutterPlugin.h"
#if __has_include(<CJMonitorFlutter/CJMonitorFlutter-Swift.h>)
#import <CJMonitorFlutter/CJMonitorFlutter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "CJMonitorFlutter-Swift.h"
#endif

@implementation CJMonitorFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCJMonitorFlutterPlugin registerWithRegistrar:registrar];
}
@end
