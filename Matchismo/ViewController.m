//
//  ViewController.m
//  Matchismo
//
//  Created by Leo Peng on 5/12/16.
//  Copyright © 2016 Leo Peng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int filpsCount;
@end

@implementation ViewController

- (void) setFilpsCount:(int)filpsCount {
    _filpsCount = filpsCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.filpsCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
        [sender setTitle:@"A♣︎" forState:UIControlStateNormal];
    }
    self.filpsCount++;
}

@end
