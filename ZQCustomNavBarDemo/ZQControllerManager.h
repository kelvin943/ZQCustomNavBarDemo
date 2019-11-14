//
//  ZQControllerManager.h
//  ZQCustomNavBarDemo
//
//  Created by 张泉(平安好房技术中心智慧城市房产云研发团队前端研发组) on 2019/11/14.
//  Copyright © 2019 macro. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZQControllerManager : NSObject

ZQSingletonH(ZQControllerManager)

- (UIViewController *)rootViewController;

@end

NS_ASSUME_NONNULL_END
