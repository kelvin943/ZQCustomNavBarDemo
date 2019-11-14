//
//  TabVC1.m
//  ZQCustomNavBarDemo
//
//  Created by 张泉(平安好房技术中心智慧城市房产云研发团队前端研发组) on 2019/11/14.
//  Copyright © 2019 macro. All rights reserved.
//

#import "TabVC1.h"
#import "TabVC2.h"

@interface TabVC1 ()

@end

@implementation TabVC1


-(void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    self.tableView.frame = self.view.bounds;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.tableView.tableFooterView = [[UIView alloc] init];
    self.zq_CustomNavBar.backgroundColor = [UIColor redColor];
    self.title = @"渐变导航栏";
    self.zq_CustomNavBar.alpha = 0;
    
    UIView * headView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ZQScreenWidth, 300)];
    headView.backgroundColor =[UIColor whiteColor];
    self.tableView.tableHeaderView = headView;
    
    [self construstData];
}


-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
    [super scrollViewDidScroll:scrollView];
    
    CGFloat offsetY = scrollView.contentOffset.y + self.tableView.contentInset.top;
    if (offsetY > 10 && offsetY < 300 ) {
//        self.zq_CustomNavBar.backgroundColor = UIColorWithHex(0x222222);
        self.zq_CustomNavBar.alpha = (offsetY - 10) / (290) >= 1 ? 1 : (offsetY - 10) / (290);
//        self.zq_CustomNavBar.layer.shadowColor = [UIColor blackColor].CGColor;
//        self.zq_CustomNavBar.layer.shadowOpacity = 1;
//        self.zq_CustomNavBar.layer.shadowOffset = CGSizeMake(2,2);
    }else if (offsetY >= 300) {
//        self.zq_CustomNavBar.backgroundColor = UIColorWithHex(0x222222);
        self.zq_CustomNavBar.alpha = 1;
//        self.zq_CustomNavBar.layer.shadowColor = [UIColor blackColor].CGColor;
//        self.zq_CustomNavBar.layer.shadowOpacity = 1;
//        self.zq_CustomNavBar.layer.shadowOffset = CGSizeMake(2,2);
    } else {
//        self.zq_CustomNavBar.backgroundColor = UIColorWithHex(0x222222);、
        self.zq_CustomNavBar.alpha = 0;
//        self.zq_CustomNavBar.layer.shadowOpacity  = 0;
//        self.zq_CustomNavBar.layer.shadowOffset = CGSizeMake(0,0);
    }
}


- (void)tableView:(UITableView *)tableView
didSelectObject:(id<CellModelBasicProtocol>)object
    atIndexPath:(NSIndexPath *)indexPath {
    if ([object isKindOfClass:[ZQCustomDefaultCellItem class]]) {
        ZQCustomDefaultCellItem * item = (ZQCustomDefaultCellItem*)object;
        TabVC2 * vc = [[TabVC2 alloc] init];
        vc.title = [NSString stringWithFormat:@"第%ld页",(self.navigationController.viewControllers.count+1)];
        [vc setNavBarColor:item.bgColor];
        if (indexPath.row == 0) {
            vc.zq_prefersNavigationBarHidden = YES;
            vc.title =  @"隐藏导航栏";
        }
        [self.navigationController pushViewController:vc animated:YES];
    }
    
}

- (void)construstData {
    NSMutableArray * items = @[].mutableCopy;
    {
       ZQCustomDefaultCellItem * item = [ZQCustomDefaultCellItem cellWithTitleStr:@"adsfas" subTitle:@"1231"];
       item.cellHeight = @(100);
       item.bgColor = [UIColor clearColor];
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
       [items addObject:item];
    }
    
    self.tableViewAdaptor.items = items;
    [self.tableView reloadData];
    
}
@end
