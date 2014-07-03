//
//  VBViewController.h
//  AnimatedGIF-Storyboards
//
//  Created by Vikram Bahl on 2/7/14.
//  Copyright (c) 2014 Vikram Bahl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FLAnimatedImageView.h"
#import "FLAnimatedImage.h"

@interface VBViewController : UIViewController
@property (strong, nonatomic) IBOutlet FLAnimatedImageView *lightningImageView;
@property (strong, nonatomic) IBOutlet FLAnimatedImageView *manWalkingImageView;

@property (strong, nonatomic) IBOutlet FLAnimatedImageView *pageLoadingImageView;

@end
