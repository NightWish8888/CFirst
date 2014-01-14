//
//  LeftMenuViewController.m
//  FCorps
//
//  Created by Zhu Zhihai on 14-1-14.
//  Copyright (c) 2014年 Zhu Zhihai. All rights reserved.
//

#import "LeftMenuViewController.h"
#define kImg    @"img"
#define kTitle  @"title"
@interface LeftMenuViewController ()

@end

@implementation LeftMenuViewController

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
    UIImageView *tbbg = [[UIImageView alloc] initWithFrame:self.tableView.bounds];
    [tbbg setImage:[UIImage imageNamed:@"menu_bgImg.png"]];
    [self.tableView setBackgroundView:tbbg];
    [tbbg release];
    [self configureDataSource];
    [self.logoImgView setImage:[UIImage imageNamed:@"icon_13_05.png"]];
}
-(void)configureDataSource{
    self.dataSource = [NSMutableArray arrayWithCapacity:1];
    [self.dataSource addObject:[self createDicInfo:@"menu1.png" Title:@"第一兵团"]];
    [self.dataSource addObject:[self createDicInfo:@"menu2.png" Title:@"军区大比武"]];
    [self.dataSource addObject:[self createDicInfo:@"menu3.png" Title:@"我的军营"]];
    [self.dataSource addObject:[self createDicInfo:@"menu4.png" Title:@"兵团新闻"]];
    [self.dataSource addObject:[self createDicInfo:@"menu5.png" Title:@"立元嘉合"]];
}
-(NSMutableDictionary *)createDicInfo:(NSString *)imgName  Title:(NSString *)title{
    NSMutableDictionary *dicInfo = [NSMutableDictionary dictionaryWithCapacity:1];
    [dicInfo setObject:[UIImage imageNamed:imgName] forKey:kImg];
    [dicInfo setObject:title forKey:kTitle];
    return dicInfo;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showPersonInfo:(id)sender {
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}
- (void)dealloc {
    [_tableView release];
    [_bgImgView release];
    [_logoImgView release];
    [_nameLabel release];
    [super dealloc];
}
#pragma UITableView DataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataSource.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger row = indexPath.row;
    NSString *cellIdentifier = @"cell";
    LeftMenuCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[[LeftMenuCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier] autorelease];
    }
    NSMutableDictionary *dicInfo = [self.dataSource objectAtIndex:row];
    cell.textLabel.text = [dicInfo objectForKey:kTitle];
    [cell.textLabel setTextColor:[UIColor whiteColor]];
    [cell.textLabel setFont:[UIFont boldSystemFontOfSize:15]];
    cell.imageView.image = [dicInfo objectForKey:kImg];
    [cell.imageView setContentMode:UIViewContentModeCenter];
    [cell.imageView setTransform:CGAffineTransformScale(cell.imageView.transform, .5, .5)];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    
}
-(float)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60.0f;
}
#pragma mark UITableView Delegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger row = indexPath.row;
    
    
}

@end
