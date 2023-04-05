//
//  LLFrameworkTestContext.h
//  LLFrameworkTest
//
//  Created by 陈宏伟 on 2023/04/05.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LLFrameworkTestContext : NSObject

#pragma mark -获取图片-
+(UIImage *)imageNamed:(NSString *)name;

#pragma mark -获取组件自定义提示语-
+ (NSString* (^)(NSString *key))localMessage;

@end

NS_ASSUME_NONNULL_END
