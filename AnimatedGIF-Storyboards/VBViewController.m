//
//  VBViewController.m
//  AnimatedGIF-Storyboards
//
//  Created by Vikram Bahl on 2/7/14.
//  Copyright (c) 2014 Vikram Bahl. All rights reserved.
//

#import "VBViewController.h"

@interface VBViewController ()

@end

@implementation VBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Set the title of the naviagation bar
    self.title = @"I Love GIF's";
    
    //Add the gifs as FLAnimatedImage objects
    FLAnimatedImage *manWalkingImage = [[FLAnimatedImage alloc] initWithAnimatedGIFData:[NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"manWalking" ofType:@"gif"]]];
    
    FLAnimatedImage *lightningImage = [[FLAnimatedImage alloc] initWithAnimatedGIFData:[NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"lightning" ofType:@"gif"]]];
    
    //Loading a gif from URL
    FLAnimatedImage *loadingImage = [[FLAnimatedImage alloc] initWithAnimatedGIFData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://vikrambahl.com/wp-content/uploads/2014/06/ajax_loader_blue_512.gif"]]];
    
    
    //Assign the FLAnimatedImage types to each of the FLAnimatedImageViews via the animatedImage property
    self.lightningImageView.animatedImage = lightningImage;
    self.manWalkingImageView.animatedImage = manWalkingImage;
    self.pageLoadingImageView.animatedImage = loadingImage;
    
    //Add the FLAnimatedImage view objects as subviews
    [self.view addSubview:self.lightningImageView];
    [self.view addSubview:self.manWalkingImageView];
    [self.view addSubview:self.pageLoadingImageView];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
