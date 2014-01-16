//
//  LeftMenuViewController.h
//  FCorps
//
//  Created by Zhu Zhihai on 14-1-14.
//  Copyright (c) 2014年 Zhu Zhihai. All rights reserved.
//

@protocol LeftMenuViewControllerDelegate <NSObject>

-(void)showViewControllerAtSelectedIndex:(NSInteger)index;
@end

#import <UIKit/UIKit.h>
#import "UIViewController+MMDrawerController.h"
#import "LeftMenuCell.h"
@interface LeftMenuViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) NSMutableArray *dataSource;
- (IBAction)showPersonInfo:(id )sender;
@property (retain, nonatomic) IBOutlet UITableView *tableView;
@property (retain, nonatomic) IBOutlet UIImageView *bgImgView;
@property (retain, nonatomic) IBOutlet UIImageView *logoImgView;
@property (retain, nonatomic) IBOutlet UILabel *nameLabel;

@property (nonatomic,assign) id<LeftMenuViewControllerDelegate> selectVCDelegate;
@end
