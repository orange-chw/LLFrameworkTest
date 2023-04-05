//
//  LLFrameworkTestContext.m
//  LLFrameworkTest
//
//  Created by 陈宏伟 on 2023/04/05.
//

#import "LLFrameworkTestContext.h"

@implementation LLFrameworkTestContext
#pragma mark -获取图片-
+(UIImage *)imageNamed:(NSString *)name{
    UIImage *image = [UIImage imageNamed:name inBundle:[self getPlatformBundle] compatibleWithTraitCollection:nil];
    return image;
}

#pragma mark -获取当前bundle-
+(NSBundle *)getPlatformBundle {
    NSBundle *currentBundle = [NSBundle bundleForClass:self.class];
    NSURL *bundleURL = [currentBundle URLForResource:@"LLFrameworkTest" withExtension:@"bundle"];
    NSBundle *resourceBundle = [NSBundle bundleWithURL:bundleURL];
    return resourceBundle;
}

#pragma mark - 获取组件提示语
+ (NSString * _Nonnull (^)(NSString * _Nonnull))localMessage{
    return ^NSString *(NSString *key){
        return NSLocalizedStringFromTableInBundle(key, @"LLFrameworkTest", [self getPlatformBundle], nil);
    };
}
@end
