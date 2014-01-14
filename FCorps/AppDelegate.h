//
//  AppDelegate.h
//  FCorps
//
//  Created by Zhu Zhihai on 14-1-10.
//  Copyright (c) 2014年 Zhu Zhihai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeftMenuViewController.h"
#import "CenterViewController.h"
#import "MMDrawerController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic,strong) MMDrawerController * drawerController;
@end
