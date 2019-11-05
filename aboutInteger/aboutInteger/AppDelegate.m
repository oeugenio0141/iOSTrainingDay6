//
//  AppDelegate.m
//  aboutInteger
//
//  Created by OPSolutions on 01/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //Signed = positive or negative
    //Unsigned = postive only
    
    //3 Kinds of integer in iOS
    // 1. Architecture-dependent types (char, short, int, long, long long)
    // 2. Explicit sized types (int8_t, int16_t, int32_t, int64_t)
    // 3. Apply types (NSInteger, NSUInteger)
    
    //BEST PRACTICE
    //NSInteger - when interacting with Apple code.
    //Arch dependent or explicit types - when you want to specify type.
    
    int myInt = 34;
    short myShort = 20;
    
    NSLog(@"Values: %d, %hd", myInt, myShort);
    
    
    int i = 1;
    unsigned int ui = 2;
    long l = 3;
    
    NSLog(@"int: %d value: (%lu bytes): %d to %d", i, sizeof(i), (int)INT_MIN, (int)INT_MAX);
    NSLog(@"unsigned int: %u value: (%lu bytes): %u to %u", ui, sizeof(ui), 0, (unsigned long)UINT_MAX);
    NSLog(@"long: %ld value: (%lu bytes): %ld to %ld", l, sizeof(l), (long)LONG_MIN, (long)LONG_MAX);

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
