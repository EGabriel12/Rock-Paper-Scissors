//
//  RPSTurn.m
//  RockPaperScissors
//
//  Created by Elias Gabriel dos Santos Correa on 11/07/19.
//  Copyright © 2019 Elias Gabriel dos Santos Correa. All rights reserved.
//

#import "RPSTurn.h"

@implementation RPSTurn
    -(instancetype) initWithMove: (Move) move {
        self = [super init];
        if(self) {
            _move = move;
        }
        return self;
    }
    
    -(instancetype) init {
        self = [super init];
        if(self) {
            _move = [self generateMove];
        }
        return self;
    }
    
    -(Move) generateMove {
        NSUInteger randomNumber = arc4random_uniform(3);
        
        switch (randomNumber) {
            case 0:
            return Rock;
            break;
            case 1:
            return Paper;
            break;
            case 2:
            return Scissors;
            break;
            default:
            return Invalid;
            break;
        }
        //return Rock;
    }
    -(BOOL) defeats: (RPSTurn*) opponent {
        if((self.move == Paper && opponent.move == Rock) || (self.move == Rock && opponent.move == Scissors) || (self.move == Scissors && opponent.move == Paper)){
            return true;
        }
        else {
            return false;
        }
        
    }
    -(NSString*) description {
        switch (self.move) {
            case Rock:
            return @"Rock";
            break;
            case Paper:
            return @"Paper";
            default:
            return @"Scissors";
            break;
        }
    }
    @end
