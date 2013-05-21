//
//  ViewController.m
//  Practice7
//
//  Created by Wesley Seago on 5/21/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error"  message:@"This is an Alert View" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    if (alertView != nil)
    {
        
        [alertView show];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
