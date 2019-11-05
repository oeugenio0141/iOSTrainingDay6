//
//  AppDelegate.m
//  aboutFloat
//
//  Created by OPSolutions on 31/10/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    float f = M_PI;
    double d = M_PI;
    CGFloat cgf = M_PI;
    
    NSLog(@"Float: %0.04f \n Size (bytes): %lu", f, sizeof(f));
    NSLog(@"Double: %0.04f \n Size (bytes): %lu", d, sizeof(d));
    NSLog(@"CGFloat: %0.04f \n Size (bytes): %lu", cgf, sizeof(cgf));
    
    NSLog(@"Error: %.12f", ABS((double)f-d)); //Checking the difference between float and double in 64 bit.
    
    float theWrongWay = 1/3;
    float theRightWay = 1.0/3.0;
    
    NSLog(@"Float the wrong way: %f", theWrongWay); //This will only print zero
    NSLog(@"Float the right way: %f", theRightWay);
    
    float initial = 0.1;
    f = initial/3;
    f += initial/3;
    f += initial/3;
    
    NSLog(@"Value of f: %.12f", f);
    NSLog(@"Value of initial: %.12f", initial);
    NSLog(@"Error: %.12f", ABS(f-initial));
    
    float tolerance = FLT_EPSILON;
    
    NSLog(@"Tolerance value: %.12f", tolerance);
    
    if(ABS(f-initial) < tolerance){
        NSLog(@"Match!");
    }else{
        NSLog(@"No Match");
    }
    
    // Override point for customization after application launch.
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
