//
//  ViewController.m
//  Soundboard
//
//  Created by Dan Fortunato on 2/12/13.
//  Copyright (c) 2013 Dan Fortunato. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)buttonPressed:(id)originator
{
    UIButton *theButton = (UIButton *)originator;
    NSString *tag = [NSString stringWithFormat:@"%d", theButton.tag];
    NSString *soundFile = [tag stringByAppendingString:@".wav"];
    NSString *path = [NSString stringWithFormat:[@"%@/" stringByAppendingString:soundFile], [[NSBundle mainBundle] resourcePath]];
    NSURL *theURL = [NSURL fileURLWithPath:path];
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:theURL error:nil];
    [audioPlayer play];
}

@end
