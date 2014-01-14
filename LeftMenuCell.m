//
//  LeftMenuCell.m
//  FCorps
//
//  Created by Zhu Zhihai on 14-1-14.
//  Copyright (c) 2014年 Zhu Zhihai. All rights reserved.
//

#import "LeftMenuCell.h"

@implementation LeftMenuCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    UIImageView *imgview = nil;
    if (selected) {
        imgview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"menu_cell_selected.png"]];
        [self setBackgroundView:imgview];
    }
    else{
        imgview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"menu_cell_unselected.png"]];
        [self setBackgroundView:imgview];
    }
    [imgview release];
    // Configure the view for the selected state
}

@end
