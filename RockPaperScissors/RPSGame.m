//
//  RPSGame.m
//  RockPaperScissors
//
//  Created by Elias Gabriel dos Santos Correa on 11/07/19.
//  Copyright © 2019 Elias Gabriel dos Santos Correa. All rights reserved.
//

#import "RPSGame.h"
#import "RPSTurn.h"

@implementation RPSGame
    -(instancetype) initWithFirstTurn:(RPSTurn*) playerTurn secondTurn: (RPSTurn*) computerTurn {
        self = [super init];
        if(self) {
            _firstTurn = playerTurn;
            _secondTurn = computerTurn;
        }
        return self;
    }
@end
