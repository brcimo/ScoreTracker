//
//  ViewController.h
//  ScoreTracker
//
//  Created by Bryan MacBook Pro on 1/26/12.
//  Copyright (c) 2012 Bryan Cimo. All rights reserved.
//

#import <UIKit/UIKit.h>


@class PlayerControls;


@interface ViewController : UIViewController 
{
    PlayerControls *playerController1;
    PlayerControls *playerController2;
    PlayerControls *playerController3;
    PlayerControls *playerController4;
}

@property (strong, nonatomic) IBOutlet UISegmentedControl *numPlayerSegment;

@property (strong, nonatomic) IBOutlet UIView *player1View;
@property (strong, nonatomic) IBOutlet UIView *player2View;
@property (strong, nonatomic) IBOutlet UIView *player3View;
@property (strong, nonatomic) IBOutlet UIView *player4View;

@end
