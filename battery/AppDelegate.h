//
//  AppDelegate.h
//  battery
//
//  Created by 马孟轩 on 2016/12/22.
//  Copyright © 2016年 马孟轩. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

