//
//  IDSbatteryClass.m
//  battery
//
//  Created by 马孟轩 on 2016/12/23.
//  Copyright © 2016年 马孟轩. All rights reserved.
//

#import "IDSbatteryClass.h"
@interface IDSbatteryClass()
{
    
}
@property (nonatomic, strong)UIImageView *backImageView;
@property (nonatomic, strong)UIBezierPath *rectanglePath;
@end
@implementation IDSbatteryClass

-(void)setCurrentNum:(NSInteger)currentNum{
    _currentNum = currentNum;
    [self setNeedsDisplay];
}

-(void)setReceive:(BOOL)receive{
    _receive = receive;
    //更改图片
    UIImage *batteryImage = [UIImage imageNamed:@"battery"];
    UIImage *battery_kImage = [UIImage imageNamed:@"battery_k"];
    if (receive) {
        self.backImageView.image = batteryImage;
    }else{
        self.backImageView.image = battery_kImage;
    }
}
-(UIImageView *)backImageView{
    if (!_backImageView) {
        UIImage *batteryimage = [UIImage imageNamed:@"battery"];
        _backImageView = [[UIImageView alloc] initWithImage:batteryimage];
        [_backImageView setContentMode:UIViewContentModeScaleAspectFit];
        [self addSubview:_backImageView];
    }
    return _backImageView;
}
+(instancetype)batteryWithCurrentNum:(NSInteger)currentNum receive:(BOOL)receive{
    IDSbatteryClass *batteryView = [[IDSbatteryClass alloc] init];
    batteryView.currentNum = currentNum;
    batteryView.receive = receive;
    batteryView.backgroundColor = [UIColor clearColor];
    return batteryView;
}

- (void)drawRect:(CGRect)rect {
    if (_currentNum >= 50) {
        [UIColor.greenColor setFill];
        [_rectanglePath fill];
    }else{
        [UIColor.redColor setFill];
        [_rectanglePath fill];
    }
    if (!(_currentNum == 0)) {
        _rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(2, 1.5, _currentNum * 0.23, 11.5)];
        [_rectanglePath fill];
    }
    
}


@end
