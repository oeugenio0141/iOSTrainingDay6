//
//  DateCalculator.h
//  aboutClassesAndMethods
//
//  Created by OPSolutions on 01/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DateCalculator : NSObject

- (void)setHisAge:(float)hisAge;

- (float)hisAge;

- (BOOL)shouldHeDateIfHerAgeIs:(float)herAge;



@end

NS_ASSUME_NONNULL_END
