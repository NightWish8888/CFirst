//
//  CenterViewController.m
//  FCorps
//
//  Created by Zhu Zhihai on 14-1-14.
//  Copyright (c) 2014年 Zhu Zhihai. All rights reserved.
//

#import "FirstCorpsViewController.h"

@interface FirstCorpsViewController ()

@end

@implementation FirstCorpsViewController

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
    [self.cNavigationBar setBackgroundImage:[UIImage imageNamed:@"center_navBgView.png"] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
    UINavigationItem *item = [self.cNavigationBar.items firstObject];
    UIImageView *titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo.png"]];
    [titleView setContentMode:UIViewContentModeScaleAspectFit];
    [titleView setFrame:CGRectMake(0, 0, 45, 30)];
    [item setTitleView:titleView];
    [titleView release];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showMenu:(UIButton *)sender {
    [Helper postShowMenuNotification];
}
- (void)dealloc {
    [_cNavigationBar release];
    [_tableView release];
    [_centerLabel release];
    [_infoScrollView release];
    [_pageControl release];
    [super dealloc];
}

#pragma mark --UITableData Source
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 0;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger row = indexPath.row;
    NSString *cellIdentifier = @"cell";
    FirstCorpsVCCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[[FirstCorpsVCCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier] autorelease];
    }

    [cell.imageView setContentMode:UIViewContentModeCenter];
    [cell.imageView setTransform:CGAffineTransformScale(cell.imageView.transform, .5, .5)];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
@end
