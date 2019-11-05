//
//  Initializer.m
//  aboutInitializers
//
//  Created by OPSolutions on 01/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "Initializer.h"

@implementation Initializer

- (instancetype)initWithFirstName:(NSString *)firstName andWithLastName:(NSString *)lastName{
    if (self = [super init]){
        _firstName = firstName;
        _lastName = lastName;
    }
    return self;
}



@end
