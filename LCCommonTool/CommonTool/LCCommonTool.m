//
//  LCCommonTool.m
//  LCCommonTool
//
//  Created by lcc on 2018/11/1.
//  Copyright © 2018年 lcc. All rights reserved.
//

#import "LCCommonTool.h"

@implementation LCCommonTool

#pragma mark - 判断是否全是空格
+ (BOOL) isEmpty:(NSString *) str {
    
    if (!str) {
        
        return true;
        
    } else {
        
        NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        
        NSString *trimedString = [str stringByTrimmingCharactersInSet:set];
        
        if ([trimedString length] == 0) {
            
            return true;
            
        } else {
            return false;
        }
    }
}

#pragma mark - 获取当前的时间
+ (NSString*)getCurrentTimes{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"YYYY-MM-dd"];
    NSDate *datenow = [NSDate date];
    NSString *currentTimeString = [formatter stringFromDate:datenow];
    return currentTimeString;
}


#pragma mark - isNull判断
+ (BOOL)isNull:(id)object
{
    // 判断是否为空串
    if ([object isEqual:[NSNull null]]) {
        return YES;
    }
    else if ([object isKindOfClass:[NSNull class]])
    {
        return YES;
    }
    else if (object==nil){
        return YES;
    }
    else if ([[NSString stringWithFormat:@"%@",object] isEqualToString:@"(null)"]){
        return YES;
    }
    else if ([[NSString stringWithFormat:@"%@",object] isEqualToString:@"<null>"]){
        return YES;
    }
    else if([[NSString stringWithFormat:@"%@",object] isEqualToString:@""])
    {
        return YES;
    }
    
    return NO;
}


@end
