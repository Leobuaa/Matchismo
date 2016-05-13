//
//  Card.h
//  Matchismo
//
//  Created by Leo Peng on 5/13/16.
//  Copyright © 2016 Leo Peng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic, strong) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL match;

- (int)match:(NSArray *)otherCards;

@end
