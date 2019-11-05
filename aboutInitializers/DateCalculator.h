//
//  DateCalculator.h
//  aboutInitializers
//
//  Created by OPSolutions on 01/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DateCalculator : NSObject

@property (assign) float hisAge;
@property (strong, nonatomic) NSString *hisName;

@property (assign, nonatomic) NSString *firstName;
@property (assign, nonatomic) NSString *lastName;

- (BOOL)shouldHeDateIfHerAgeIs:(float)herAge;

- (instancetype)initWithHisAge:(float)hisAge hisName:(NSString *)hisName;

- (instancetype)initWithString:(NSString *)firstName andWithlastName:(NSString *)lastname;


@end

NS_ASSUME_NONNULL_END
