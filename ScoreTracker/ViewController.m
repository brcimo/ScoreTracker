//
//  ViewController.m
//  ScoreTracker
//
//  Created by Bryan MacBook Pro on 1/26/12.
//  Copyright (c) 2012 Bryan Cimo. All rights reserved.
//

#import "ViewController.h"
#import "PlayerControls.h"

@implementation ViewController
@synthesize numPlayerSegment;
@synthesize player1View;
@synthesize player2View;
@synthesize player3View;
@synthesize player4View;

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Release any cached data, images, etc that aren't in use.
}

- (void)SegmentChanged
{
	switch (numPlayerSegment.selectedSegmentIndex) {
		case 0:
			player3View.hidden = YES;
			player4View.hidden = YES;
			break;

		case 1:
			player3View.hidden = NO;
			player4View.hidden = YES;
			break;

		case 2:
			player3View.hidden = NO;
			player4View.hidden = NO;
			break;

		default:
			break;
	}
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

	playerController1 = [[PlayerControls alloc] initWithNibName:@"PlayerControls" bundle:nil];
	[player1View addSubview:playerController1.view];

	playerController2 = [[PlayerControls alloc] initWithNibName:@"PlayerControls" bundle:nil];
	[player2View addSubview:playerController2.view];

	playerController3 = [[PlayerControls alloc] initWithNibName:@"PlayerControls" bundle:nil];
	[player3View addSubview:playerController3.view];

	playerController4 = [[PlayerControls alloc] initWithNibName:@"PlayerControls" bundle:nil];
	[player4View addSubview:playerController4.view];

	[numPlayerSegment addTarget:self action:@selector(SegmentChanged) forControlEvents:UIControlEventValueChanged];
}

- (void)viewDidUnload
{
	[self setNumPlayerSegment:nil];
	[self setPlayer1View:nil];
	[self setPlayer2View:nil];
	[self setPlayer3View:nil];
	[self setPlayer4View:nil];
	[super viewDidUnload];
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	// Return YES for supported orientations
	return YES;
}

@end
