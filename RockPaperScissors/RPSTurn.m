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
@end
