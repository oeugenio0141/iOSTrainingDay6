//
//  DateCalculator.m
//  aboutClassesAndMethods
//
//  Created by OPSolutions on 01/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import "DateCalculator.h"

@implementation DateCalculator {
    float _hisAge;
}



- (void)setHisAge:(float)hisAge{
    
    _hisAge = hisAge;
    
}

- (float)hisAge{
    
    return _hisAge;
    
}

- (BOOL)shouldHeDateIfHerAgeIs:(float)herAge{
    
    float minAgeToDate = _hisAge / 2 + 7;
    
    return herAge > minAgeToDate;
    
}


@end
