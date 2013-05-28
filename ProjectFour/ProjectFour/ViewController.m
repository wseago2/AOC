//
//  ViewController.m
//  ProjectFour
//
//  Created by Wesley Seago on 5/28/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //set background to white
    self.view.backgroundColor = [UIColor whiteColor];
    
    //create username UILabel
    UILabel *username = [[UILabel alloc] initWithFrame:CGRectMake(0,10,100,32)];
    if (username != nil)
    {
        username.backgroundColor = [UIColor whiteColor];
        username.text = @"Username: ";
        username.textAlignment = NSTextAlignmentCenter;
        username.textColor = [UIColor blackColor];
        [self.view addSubview:username];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
