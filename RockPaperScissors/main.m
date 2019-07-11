//
//  main.m
//  RockPaperScissors
//
//  Created by Elias Gabriel dos Santos Correa on 11/07/19.
//  Copyright © 2019 Elias Gabriel dos Santos Correa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        RPSController *gameController = [[RPSController alloc] init];
        [gameController throwDown: Paper];
        
        NSString *resultsMessage = [gameController messageForGame: gameController.game];
        NSLog(@"%@", resultsMessage);
        
    }
    return 0;
}
