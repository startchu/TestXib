//
//  HomeViewController.m
//  TestXib
//
//  Created by cc on 14-9-28.
//  Copyright (c) 2014年 company. All rights reserved.
//

#import "HomeViewController.h"
#import "ViewController.h"
#import "ListViewController.h"

@interface HomeViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *_datas;
}
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([[[UIDevice currentDevice] systemVersion] doubleValue]>=7.0)
    {
        self.edgesForExtendedLayout= UIRectEdgeNone;
    }

    self.title = @"xib";
    _datas = @[@"IBOutet IBOutletCollection IBAction",
               @"UILabel",
               @"UIImageView ContentMode",
               @"UIImageView 拉伸",
               @"Autosize",
               @"加载nib文件"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    cell.textLabel.text = [_datas objectAtIndex:indexPath.row];
    cell.textLabel.font = [UIFont systemFontOfSize:14.0];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (indexPath.row == 0) {
        ViewController *vc = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
        vc.title = cell.textLabel.text;
        [self.navigationController pushViewController:vc animated:YES];
        
    }
    else if (indexPath.row == 1)
    {
        ViewController *vc = [[ViewController alloc] initWithNibName:@"UILabelViewController" bundle:nil];
        vc.title = cell.textLabel.text;
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if (indexPath.row == 2)
    {
        ViewController *vc = [[ViewController alloc] initWithNibName:@"ImageViewController" bundle:nil];
        vc.title = cell.textLabel.text;
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if (indexPath.row == 3)
    {
        ViewController *vc = [[ViewController alloc] initWithNibName:@"StretchViewController" bundle:nil];
        vc.title = cell.textLabel.text;
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if (indexPath.row == 4)
    {
        ViewController *vc = [[ViewController alloc] initWithNibName:@"AutosizeViewController" bundle:nil];
        vc.title = cell.textLabel.text;
        [self.navigationController pushViewController:vc animated:YES];
    }
    else if (indexPath.row == 5)
    {
        ListViewController *vc = [[ListViewController alloc] init];
        vc.title = cell.textLabel.text;
        [self.navigationController pushViewController:vc animated:YES];
    }
}
@end
