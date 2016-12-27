//
//  IDSbatteryClass.h
//  battery
//
//  Created by 马孟轩 on 2016/12/23.
//  Copyright © 2016年 马孟轩. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IDSbatteryClass : UIView
//1.电量属性
@property (nonatomic, assign)    NSInteger currentNum;
//2.是否连接
@property (nonatomic, assign)    BOOL       receive;
//3.设置一个类方法
+(instancetype) batteryWithCurrentNum:(NSInteger)currentNum receive:(BOOL)receive;
@end
