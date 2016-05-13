//
//  ViewController.m
//  Matchismo
//
//  Created by Leo Peng on 5/12/16.
//  Copyright © 2016 Leo Peng. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int filpsCount;
@property (nonatomic, strong) Deck *deck;
@end

@implementation ViewController

- (Deck *)deck {
    if (!_deck) {
        _deck = [self createDeck];
    }
    
    return _deck;
}

- (Deck *)createDeck {
    return [[PlayingCardDeck alloc] init];
}

- (void) setFilpsCount:(int)filpsCount {
    _filpsCount = filpsCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.filpsCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        self.filpsCount++;
    } else {
        Card *card = [self.deck drawRandomCard];
        if (card) {
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
            [sender setTitle:card.contents forState:UIControlStateNormal];
            self.filpsCount++;
        }
    }
    
}

@end
