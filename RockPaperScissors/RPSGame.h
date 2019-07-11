//
//  RPSGame.h
//  RockPaperScissors
//
//  Created by Elias Gabriel dos Santos Correa on 11/07/19.
//  Copyright © 2019 Elias Gabriel dos Santos Correa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSGame : NSObject
    @property (nonatomic) RPSTurn *firstTurn;
    @property (nonatomic) RPSTurn *secondTurn;
    
    -(instancetype) initWithTurn: (Move) turn;
@end

NS_ASSUME_NONNULL_END
