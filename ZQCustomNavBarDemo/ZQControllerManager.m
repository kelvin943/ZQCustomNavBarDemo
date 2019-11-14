//
//  ZQControllerManager.m
//  ZQCustomNavBarDemo
//
//  Created by 张泉(平安好房技术中心智慧城市房产云研发团队前端研发组) on 2019/11/14.
//  Copyright © 2019 macro. All rights reserved.
//

#import "ZQControllerManager.h"
#import "TabVC1.h"
#import "TabVC2.h"

@interface ZQControllerManager ()
@property (nonatomic, strong) UIViewController * rootViewController;
@end

@implementation ZQControllerManager

ZQSingletonM(ZQControllerManager)

//初始化方法
- (instancetype)init {
    if (self = [super init]) {
    }
    return self;
}



- (UIViewController *)rootViewController {
    if (!_rootViewController) {
//        UINavigationController * navigationVC = [[UINavigationController alloc] initWithRootViewController:];
        _rootViewController =[self mainViewController];
    }
    return _rootViewController;
}

-(UIViewController*)mainViewController {
    BOOL isLogin = YES;
    if (isLogin) {
        BaseTabBarVC * tabBarVC = [[BaseTabBarVC alloc] init];
        [tabBarVC setViewControllers:@[[self tabVC1],[self tabVC2]]];
        return tabBarVC;
    }else{
        BaseViewController * loginVC = [[BaseViewController alloc] init];
        return loginVC;
    }
}


- (UIViewController*)tabVC1 {
    TabVC1 * tabVC1 = [[TabVC1 alloc] init];
    tabVC1.tabBarItem   = [[UITabBarItem alloc] initWithTitle:@"TabVC1" image:[UIImage imageNamed:@"tab1"] selectedImage:[UIImage imageNamed:@"tab1_sel"]];
    
    UINavigationController *navCtr = [[UINavigationController alloc] initWithRootViewController:tabVC1];
    return navCtr;
    
}

- (UIViewController*)tabVC2 {
    TabVC2 * tabVC2 = [[TabVC2 alloc] init];
    tabVC2.tabBarItem   = [[UITabBarItem alloc] initWithTitle:@"TabVC2" image:[UIImage imageNamed:@"tab2"] selectedImage:[UIImage imageNamed:@"tab2_sel"]];
    UINavigationController *navCtr = [[UINavigationController alloc] initWithRootViewController:tabVC2];
    return navCtr;
    
}

@end
