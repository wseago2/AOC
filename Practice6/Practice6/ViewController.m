//
//  ViewController.m
//  Practice6
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
    //call function returnValue
    [self returnValue];
    
    //call function Add with static values.
    [self Add:(4) :(2)];
    //call function add with result of function returnValue as first parameter.
    [self Add:[self returnValue] :(21)];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
//function returnValue accepts no parameters but returns an int.
- (int)returnValue
{
    int myValue = 7;
    NSLog(@"%d", myValue);
    return(myValue);
}

//function Add accepts two parameters and returns the sum
-(int)Add:(int)valueOne
         :(int)valueTwo
{
    int sumValue = (valueOne + valueTwo);
    NSLog(@"%d", sumValue);
    return (sumValue);
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
