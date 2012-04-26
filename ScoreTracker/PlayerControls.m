//
//  PlayerControls.m
//  ScoreTracker
//
//  Created by Bryan MacBook Pro on 1/26/12.
//  Copyright (c) 2012 Bryan Cimo. All rights reserved.
//

#import "PlayerControls.h"

@implementation PlayerControls
@synthesize playname;
@synthesize playScore;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    Score = 0;
}

- (void)viewDidUnload
{
    [self setPlayname:nil];
    [self setPlayScore:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)pressedScorePlus:(id)sender 
{
    Score++;
    playScore.text = [NSString stringWithFormat:@"%d", Score];
}

- (IBAction)pressedScoreMinus:(id)sender 
{
    Score--;
    playScore.text = [NSString stringWithFormat:@"%d", Score];
}

@end
