//
//  ListViewController.m
//  TestXib
//
//  Created by cc on 14-9-29.
//  Copyright (c) 2014年 company. All rights reserved.
//

#import "ListViewController.h"
#import "ListCell.h"
#import "UIImageView+WebCache.h"
#import "FMUTestData.h"

@interface ListViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ListCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"ListCell"
                                                    owner:self
                                                  options:nil]
                      lastObject];//取出来数组，取最后一个
    
    NSURL *url = [NSURL URLWithString:[FMUTestData thumbImageUrl]];
    [cell.avaterImageView sd_setImageWithURL:url];
    cell.addressLabel.text = [FMUTestData address];
    cell.titleLabel.text  =[FMUTestData name];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

@end
