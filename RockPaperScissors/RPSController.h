//
//  RPSController.h
//  RockPaperScissors
//
//  Created by Elias Gabriel dos Santos Correa on 11/07/19.
//  Copyright © 2019 Elias Gabriel dos Santos Correa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSGame.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSController : NSObject
    @property (nonatomic) RPSGame *game;
@end

NS_ASSUME_NONNULL_END
