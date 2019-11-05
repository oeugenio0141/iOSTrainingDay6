//
//  DateCalculator.m
//  aboutInitializers
//
//  Created by OPSolutions on 01/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "DateCalculator.h"

@implementation DateCalculator

- (instancetype)initWithHisAge:(float)hisAge hisName:(NSString *)hisName{
    if ((self = [super init])) {
        _hisAge = hisAge;
        _hisName = hisName;
    }
    return self;
}


- (instancetype)initWithString:(NSString *)firstName andWithlastName:(NSString *)lastName{
    if((self = [ super init])){
        _firstName = firstName;
        _lastName = lastName;
    }
    return self;
}


- (BOOL)shouldHeDateIfHerAgeIs:(float)herAge{
    float minAgeToDate = _hisAge / 2 + 7;
    return herAge > minAgeToDate;
}

@end
