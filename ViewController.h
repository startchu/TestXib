//
//  ViewController.h
//  TestXib
//
//  Created by cc on 14-9-28.
//  Copyright (c) 2014年 company. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel *_phoneLabel;
    IBOutletCollection(id) NSArray *_labels;
    
}

@end

