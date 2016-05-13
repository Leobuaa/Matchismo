//
//  PlayingCard.h
//  Matchismo
//
//  Created by Leo Peng on 5/13/16.
//  Copyright © 2016 Leo Peng. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (strong, nonatomic) NSString * suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger) maxRank;

@end
