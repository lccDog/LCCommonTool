//
//  LCCommonTool.h
//  LCCommonTool
//
//  Created by lcc on 2018/11/1.
//  Copyright © 2018年 lcc. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface LCCommonTool : NSObject

@interface CommonTool : NSObject
// 判断是否全是空格
+ (BOOL) isEmpty:(NSString *) str ;

// 获取当前的时间
+ (NSString*)getCurrentTimes;

// 判断字符串是否为空
+ (BOOL)isNull:(id)object;


@end

