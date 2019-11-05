//
//  AppDelegate.m
//  aboutEnumBitmask
//
//  Created by OPSolutions on 01/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

//Enumeration
typedef NS_ENUM(long long, VideoGameType){
    VideoGameTypeRPG, // value is 0
    VideoGameTypeStrategy, //value is 1
    VideoGameTypeAction, //value is 2
    VideoGameTypeFPS = 10 //value is 3
};

//Bitmask
typedef NS_OPTIONS(int, EntityCategory){
    EntityCategoryPlayer = 1 << 0,
    EntityCategoryEnemy = 1 << 1,
    EntityCategoryAlien = 1 << 2,
};

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    //Enumeration
    
    VideoGameType type = VideoGameTypeFPS;
    
    NSLog(@"\n\nSize of type: %lu and value is %lld", sizeof(type), type);
    
    
    switch (type) {
        case VideoGameTypeFPS:
            NSLog(@"Video Game Type is RPG");
            break;
            
        default:
            NSLog(@"This is the default");
            break;
    }
    
    
    //Bitmask
    EntityCategory category = EntityCategoryAlien | EntityCategoryEnemy;
    
    NSLog(@"\n%x", EntityCategoryPlayer);
    NSLog(@"\n%x", EntityCategoryEnemy);
    NSLog(@"\n%x", EntityCategoryAlien);
    NSLog(@"\n%x", category);
    
    if(category & EntityCategoryPlayer){
        NSLog(@"\n Category: Player");
    }
    if(category & EntityCategoryEnemy){
        NSLog(@"\n Category: Enemy");
    }
    if(category & EntityCategoryAlien){
        NSLog(@"\n Category: Alien");
        
    }

    

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
