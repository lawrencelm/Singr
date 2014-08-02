//
//  LSLyricCell.m
//  LayerSample
//
//  Created by Jonny Burger on 02.08.14.
//  Copyright (c) 2014 Layer, Inc. All rights reserved.
//

#import "LSLyricCell.h"

@implementation LSLyricCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier text:(NSString *)text
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _button = button;
    button.frame = CGRectMake(220, 0, 100, 40);
    [button setTitle:@"Record" forState:UIControlStateNormal];
    label.text = text;
    [self addSubview:label];
    [self addSubview:button];
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
