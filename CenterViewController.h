//
//  CenterViewController.h
//  FCorps
//
//  Created by Zhu Zhihai on 14-1-15.
//  Copyright (c) 2014年 Zhu Zhihai. All rights reserved.
//



#import <UIKit/UIKit.h>
#import "FirstCorpsViewController.h"
@interface CenterViewController : UIViewController<LeftMenuViewControllerDelegate>
@property (nonatomic,strong) FirstCorpsViewController *fcVC;

@end
