//
//  Sweater.m
//  aboutMemoryManagement
//
//  Created by OPSolutions on 02/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "Sweater.h"

@implementation Sweater

- (instancetype)initWithSweaterType:(SweaterType)type{
    
    if((self = [super init])){
        _type = type;
    }
    return self;
}

- (NSString *)decription{
    switch (_type) {
        case SweaterTypeBlue:
            return @"Blue Sweater";
            break;
        case SweaterTypeGray:
            return @"Gray Sweater";
            
        default:
            break;
    }
}

- (void)dealloc{
    NSLog(@"%s %@ deallocated", __PRETTY_FUNCTION__, self);
    
    [super dealloc];
}

@end
