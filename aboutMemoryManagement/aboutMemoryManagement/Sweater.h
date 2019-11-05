//
//  Sweater.h
//  aboutMemoryManagement
//
//  Created by OPSolutions on 02/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(unsigned char, SweaterType) {
    
    SweaterTypeGray,
    SweaterTypeBlue

};

@interface Sweater : NSObject

@property (assign) SweaterType type;

- (instancetype)initWithSweaterType:(SweaterType)type;

@end

NS_ASSUME_NONNULL_END
