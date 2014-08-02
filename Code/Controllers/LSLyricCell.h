//
//  LSLyricCell.h
//  LayerSample
//
//  Created by Jonny Burger on 02.08.14.
//  Copyright (c) 2014 Layer, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LSLyricCell : UITableViewCell {
    UIButton *_button;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier text:(NSString *)text;
@end
