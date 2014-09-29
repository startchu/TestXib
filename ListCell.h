//
//  ListCell.h
//  TestXib
//
//  Created by cc on 14-9-29.
//  Copyright (c) 2014年 company. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListCell : UITableViewCell
{
    IBOutlet UILabel *_titleLabel;
    IBOutlet UILabel *_addressLabel;
    IBOutlet UIImageView *_avaterImageView;
    
}
@property(nonatomic,retain) UILabel *titleLabel;
@property(nonatomic,retain) UILabel *addressLabel;
@property(nonatomic,retain) UIImageView *avaterImageView;
@end
