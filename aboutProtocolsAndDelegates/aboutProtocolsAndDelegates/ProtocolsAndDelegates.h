//
//  ProtocolsAndDelegates.h
//  aboutProtocolsAndDelegates
//
//  Created by OPSolutions on 02/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class ProtocolsAndDelegates;

@protocol FrecklesDelegate <NSObject>


@required

- (void)frecklesDidSmackLips:(ProtocolsAndDelegates *)freckles;

- (void)frecklesDidLookHopeful:(ProtocolsAndDelegates *)freckles;

@end

@interface ProtocolsAndDelegates : NSObject

@property (nonatomic, strong) id <FrecklesDelegate> delegate;

- (void)hasToGoBathroom;

- (void)isHungry;




@end

NS_ASSUME_NONNULL_END
