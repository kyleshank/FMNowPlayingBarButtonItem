//
//  FMViewController.m
//  FMNowPlayingBarButtonItem
//
//  Created by Kyle Shank on 07/10/2014.
//  Copyright (c) 2014 Kyle Shank. All rights reserved.
//

#import "FMViewController.h"
#import <FMNowPlayingBarButtonItem/UIViewController+FMNowPlayingBarButtonItem.h>

@interface FMViewController ()

@end

@implementation FMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.navigationItem.rightBarButtonItem = [self nowPlayingButton:self action:@selector(nowPlaying:)];

    [self setTitle:@"Demo"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)nowPlaying:(id)sender{
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Now Playing!" message:@"Now Playing bar button item pressed" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

@end
