//
//  RPSTurn.h
//  RockPaperScissors
//
//  Created by Elias Gabriel dos Santos Correa on 11/07/19.
//  Copyright © 2019 Elias Gabriel dos Santos Correa. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, Move) {
    Rock,
    Paper,
    Scissors
};

@interface RPSTurn : NSObject
    @property (nonatomic) Move move;
    -(instancetype) initWithMove: (Move) move;
@end

NS_ASSUME_NONNULL_END
