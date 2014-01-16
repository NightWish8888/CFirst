//
//  Helper.m
//  FCorps
//
//  Created by Zhu Zhihai on 14-1-16.
//  Copyright (c) 2014年 Zhu Zhihai. All rights reserved.
//

#import "Helper.h"

@implementation Helper
+(void)postShowMenuNotification{
    [[NSNotificationCenter defaultCenter] postNotificationName:kShowMenuNotification object:nil];
}
@end
