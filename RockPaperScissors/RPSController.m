//
//  RPSController.m
//  RockPaperScissors
//
//  Created by Elias Gabriel dos Santos Correa on 11/07/19.
//  Copyright © 2019 Elias Gabriel dos Santos Correa. All rights reserved.
//

#import "RPSController.h"
#import "RPSTurn.h"
#import "RPSGame.h"

@implementation RPSController
    -(void) throwDown: (Move) playersMove {
        RPSTurn *playersTurn = [[RPSTurn alloc] initWithMove: playersMove];
        RPSTurn *computersTurn = [[RPSTurn alloc] init];
        
        computersTurn.move = playersTurn.move;
        
        self.game = [[RPSGame alloc] initWithFirstTurn: playersTurn secondTurn:computersTurn];
//        RPSGame *game = [[RPSGame alloc] initWithFirstTurn:playersTurn secondTurn:computersTurn];
//        [self game:game]; // Método setter
        
    }
@end
