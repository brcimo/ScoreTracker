//
//  PlayerControls.h
//  ScoreTracker
//
//  Created by Bryan MacBook Pro on 1/26/12.
//  Copyright (c) 2012 Bryan Cimo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerControls : UIViewController
{
    NSInteger Score;
}

@property (strong, nonatomic) IBOutlet UITextField *playname;
@property (strong, nonatomic) IBOutlet UILabel *playScore;


- (IBAction)pressedScorePlus:(id)sender;
- (IBAction)pressedScoreMinus:(id)sender;

@end
