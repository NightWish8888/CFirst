//
//  CenterViewController.h
//  FCorps
//
//  Created by Zhu Zhihai on 14-1-14.
//  Copyright (c) 2014年 Zhu Zhihai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIViewController+MMDrawerController.h"
#import "CenterVCCell.h"
@interface CenterViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>
@property (retain, nonatomic) IBOutlet UINavigationBar *cNavigationBar;
@property (retain, nonatomic) IBOutlet UITableView *tableView;

@property (retain, nonatomic) IBOutlet UILabel *centerLabel;
@property (retain, nonatomic) IBOutlet UIScrollView *infoScrollView;
@property (retain, nonatomic) IBOutlet UIPageControl *pageControl;



- (IBAction)showMenu:(UIButton *)sender;

@end
