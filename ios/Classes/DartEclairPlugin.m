#import "DartEclairPlugin.h"
#if __has_include(<dart_eclair/dart_eclair-Swift.h>)
#import <dart_eclair/dart_eclair-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "dart_eclair-Swift.h"
#endif

@implementation DartEclairPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDartEclairPlugin registerWithRegistrar:registrar];
}
@end
