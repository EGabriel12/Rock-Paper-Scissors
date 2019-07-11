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
    
    -(NSString*)messageForGame:(RPSGame*)game {
    // Handle the tie
        if (game.firstTurn.move == game.secondTurn.move) {
            return @"It's a tie!";
        } else {
            // Here we build up the results message "Rock crushes Scissors. You Win!" etc.
            NSString *winnerString = [[game winner] description];
            NSString *loserString = [[game loser]  description];
            NSString *resultsString = [self resultString: game];
            
            NSString *wholeString =  [NSString stringWithFormat:@"%@ %@ %@ %@ %@", winnerString, @" defeats ", loserString, @".",  resultsString];
            
            return wholeString;
        }
    }
    
    -(NSString*) resultString: (RPSGame*) game {
        return [game.firstTurn defeats:game.secondTurn] ? @"You win" : @"You lose";
    }
    
@end
