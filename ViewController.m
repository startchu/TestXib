//
//  ViewController.m
//  TestXib
//
//  Created by cc on 14-9-28.
//  Copyright (c) 2014年 company. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    IBOutlet UILabel *_modeLabel;
    IBOutlet UIImageView *_imgview;
    IBOutlet UIImageView *_imgview2;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    if ([[[UIDevice currentDevice] systemVersion] doubleValue]>=7.0)
    {
        self.edgesForExtendedLayout= UIRectEdgeNone;
    }
    _phoneLabel.baselineAdjustment = UIBaselineAdjustmentAlignBaselines;
    
    [self.view viewWithTag:99];
    
}

-(void)allLabelHidden:(BOOL)hidden
{
    for (UILabel *label in _labels) {
        label.hidden = hidden;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)hiddenControlSwitchAction:(id)sender
{
    UISwitch *tSwitch = (UISwitch*)sender;
    BOOL hidden = !tSwitch.on;
    [self allLabelHidden:hidden];
}

-(IBAction)contentModeChangedAction:(id)sender
{
    UIButton *btn = (UIButton*)sender;

    if (btn.tag == 0) {
        _imgview.contentMode = UIViewContentModeScaleToFill;
        _imgview2.contentMode = UIViewContentModeScaleToFill;
    }
    else if (btn.tag == 1)
    {
        _imgview.contentMode = UIViewContentModeScaleAspectFit;
        _imgview2.contentMode = UIViewContentModeScaleAspectFit;
        [_imgview.image stretchableImageWithLeftCapWidth:13 topCapHeight:16];
    }
    else if (btn.tag == 2)
    {
        _imgview.contentMode = UIViewContentModeScaleAspectFill;
        _imgview2.contentMode = UIViewContentModeScaleAspectFit;
    }
    else if (btn.tag == 3)
    {
        _imgview.contentMode = UIViewContentModeRedraw;
        _imgview2.contentMode = UIViewContentModeRedraw;
    }
    else if (btn.tag == 4)
    {
        _imgview.contentMode = UIViewContentModeCenter;
        _imgview2.contentMode = UIViewContentModeCenter;
    }
    else if (btn.tag == 5)
    {
        _imgview.contentMode = UIViewContentModeTop;
        _imgview2.contentMode = UIViewContentModeTop;
    }
}

@end
