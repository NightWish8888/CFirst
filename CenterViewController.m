//
//  CenterViewController.m
//  FCorps
//
//  Created by Zhu Zhihai on 14-1-15.
//  Copyright (c) 2014年 Zhu Zhihai. All rights reserved.
//

#import "CenterViewController.h"

@interface CenterViewController ()

@end

@implementation CenterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showMenu:) name:kShowMenuNotification object:nil];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [self setFcVC:nil];
    [super dealloc];
}
#pragma mark --Notification
-(void)showMenu:(NSNotification *)note{
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}
#pragma mark --LeftMenuViewController Delegate
-(void)showViewControllerAtSelectedIndex:(NSInteger)index{
    switch (index) {
        case 0: //第一兵团
        {
            if (!_fcVC) {
                _fcVC = [[FirstCorpsViewController alloc] init];
                
            }
            [[self.view subviews] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                [obj removeFromSuperview];
            }];
            [self.view addSubview:_fcVC.view];
            
            break;
        }
        case 1:{//军区大比武
            
            break;
        }
        case 2:{//我的军营
            
            break;
        }
        case 3:{//兵团新闻
            
            break;
        }
        case 4:{//立元嘉禾
            
            break;
        }
        default:
            break;
    }
}
@end
