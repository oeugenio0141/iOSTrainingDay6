//
//  Stephanie.h
//  aboutProtocolsAndDelegates
//
//  Created by OPSolutions on 02/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProtocolsAndDelegates.h"

NS_ASSUME_NONNULL_BEGIN



@interface Stephanie : NSObject <FrecklesDelegate>

- (void)frecklesDidSmackLips:(ProtocolsAndDelegates *)freckles;

- (void)frecklesDidLookHopeful:(ProtocolsAndDelegates *)freckles;

@end

NS_ASSUME_NONNULL_END
