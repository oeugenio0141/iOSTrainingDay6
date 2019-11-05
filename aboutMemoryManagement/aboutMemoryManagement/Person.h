//
//  Person.h
//  aboutMemoryManagement
//
//  Created by OPSolutions on 02/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Sweater;

@interface Person : NSObject

@property (nonatomic, retain) Sweater * sweater;
@property (nonatomic, retain) NSString * name;


- (instancetype)initWithName:(NSString *)name;
- (NSString *)quote;

@end

NS_ASSUME_NONNULL_END
