//
//  Deck.h
//  Matchismo
//
//  Created by Leo Peng on 5/13/16.
//  Copyright © 2016 Leo Peng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *) card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
