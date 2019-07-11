//
//  RPSController.m
//  RockPaperScissors
//
//  Created by Elias Gabriel dos Santos Correa on 11/07/19.
//  Copyright © 2019 Elias Gabriel dos Santos Correa. All rights reserved.
//

#import "RPSController.h"
#import "RPSTurn.h"

@implementation RPSController
    -(void) throwDown: (Move) playersMove {
        RPSTurn *playerTurn = [[RPSTurn alloc] initWithMove: playersMove];
    }
@end
