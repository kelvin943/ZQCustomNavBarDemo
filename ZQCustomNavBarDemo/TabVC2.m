//
//  TabVC2.m
//  ZQCustomNavBarDemo
//
//  Created by 张泉(平安好房技术中心智慧城市房产云研发团队前端研发组) on 2019/11/14.
//  Copyright © 2019 macro. All rights reserved.
//

#import "TabVC2.h"

@interface TabVC2 ()

@end

@implementation TabVC2


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.tableView.tableFooterView = [[UIView alloc] init];
    [self construstData];
}


- (void)setNavBarColor:(UIColor *)color {
    self.zq_CustomNavBar.backgroundColor = color;
}
- (void)tableView:(UITableView *)tableView
didSelectObject:(id<CellModelBasicProtocol>)object
    atIndexPath:(NSIndexPath *)indexPath {
    
    if ([object isKindOfClass:[ZQCustomDefaultCellItem class]]) {
        ZQCustomDefaultCellItem * item = (ZQCustomDefaultCellItem*)object;
        TabVC2 * vc = [[TabVC2 alloc] init];
        vc.title = [NSString stringWithFormat:@"第%ld页",(self.navigationController.viewControllers.count+1)];
        [vc setNavBarColor:item.bgColor];
        [self.navigationController pushViewController:vc animated:YES];
    }
    
}

- (void)construstData {
    NSMutableArray * items = @[].mutableCopy;
    {
       ZQCustomDefaultCellItem * item = [ZQCustomDefaultCellItem cellWithTitleStr:@"adsfas" subTitle:@"1231"];
       item.cellHeight = @(100);
        item.bgColor = [UIColor randomColor];
       [items addObject:item];
    }
    {
       ZQCustomDefaultCellItem * item = [ZQCustomDefaultCellItem cellWithTitleStr:@"adsfas" subTitle:@"1231"];
       item.cellHeight = @(100);
        item.bgColor = [UIColor randomColor];
       [items addObject:item];
    }
    {
       ZQCustomDefaultCellItem * item = [ZQCustomDefaultCellItem cellWithTitleStr:@"adsfas" subTitle:@"1231"];
       item.cellHeight = @(100);
        item.bgColor = [UIColor randomColor];
       [items addObject:item];
    }
    {
       ZQCustomDefaultCellItem * item = [ZQCustomDefaultCellItem cellWithTitleStr:@"adsfas" subTitle:@"1231"];
       item.cellHeight = @(100);
        item.bgColor = [UIColor randomColor];
       [items addObject:item];
    }
    {
       ZQCustomDefaultCellItem * item = [ZQCustomDefaultCellItem cellWithTitleStr:@"adsfas" subTitle:@"1231"];
       item.cellHeight = @(100);
        item.bgColor = [UIColor randomColor];
       [items addObject:item];
    }
    {
       ZQCustomDefaultCellItem * item = [ZQCustomDefaultCellItem cellWithTitleStr:@"adsfas" subTitle:@"1231"];
       item.cellHeight = @(100);
        item.bgColor = [UIColor randomColor];
       [items addObject:item];
    }
   
    
    self.tableViewAdaptor.items = items;
    [self.tableView reloadData];
    
}

@end
