//
//  Initializer.h
//  aboutInitializers
//
//  Created by OPSolutions on 01/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Initializer : NSObject

@property (assign, nonatomic)NSString *firstName;
@property (assign, nonatomic)NSString *lastName;

- (instancetype)initWithFirstName:(NSString *)firstName andWithLastName:(NSString *)lastName;


@end

NS_ASSUME_NONNULL_END
