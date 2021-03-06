//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Leo Peng on 5/13/16.
//  Copyright © 2016 Leo Peng. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

static const NSUInteger maxRank = 4;

@implementation PlayingCardDeck

- (instancetype)init {
    self = [super init];
    
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= maxRank; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.suit = suit;
                card.rank = rank;
                [self addCard:card];
            }
        }
    }
    
    return self;
}

@end
