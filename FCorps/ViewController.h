//
//  ViewController.h
//  FCorps
//
//  Created by Zhu Zhihai on 14-1-10.
//  Copyright (c) 2014年 Zhu Zhihai. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MMDrawerController.h"
#import "LeftMenuViewController.h"
#import "CenterViewController.h"
@interface ViewController : UIViewController<UITextFieldDelegate>

@property (assign, nonatomic) IBOutlet UIImageView *bgImgView;

@property (assign, nonatomic) IBOutlet UITextField *userNameTextField;

@property (assign, nonatomic) IBOutlet UITextField *pwTextField;

@property (assign, nonatomic) IBOutlet UIButton *loginBtn;

- (IBAction)login:(id)sender;



@end
