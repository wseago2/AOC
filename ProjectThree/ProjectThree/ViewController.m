//
//  ViewController.m
//  ProjectThree
//
//  Created by Wesley Seago on 5/21/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//Add function.
//Two parameters myNumberOne and myNumberTwo.
//Returns sum of parameters.
-(int)Add:(NSInteger)myNumberOne toInt:(NSInteger)myNumberTwo
{
    return (myNumberOne + myNumberTwo);
}

//Compare function.
//Two parameters myBoolOne and myBoolTwo.
//Returns true if they are equal, else false.
-(BOOL)Compare:(NSInteger)myBoolOne toInt:(NSInteger)myBoolTwo
{
    if (myBoolOne == myBoolTwo)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

//Append function.
//Two parameters myFirstString and mySecondString.
//Creates NSMutable string called appendString.
//Appends myFirstString to appendString, mySecondString to appendString.
//Creates NSString myNewString from appendString.
//Returns myNewString.
-(NSString*)Append:(NSString*)myFirstString appendWith:(NSString*)mySecondString
{
    NSMutableString *appendString = [[NSMutableString alloc] initWithString:myFirstString];
    NSString *myNewString = [appendString stringByAppendingString:mySecondString];
    return myNewString;
}

- (void)viewDidLoad
{
    
//    NSLog(@"%@", [self Append:@"I think " appendWith:@"this should work!"]);
//    NSLog(@"%d", [self Add: 8 toInt:7]); 
//    NSLog(@"%@", ([self Compare: 9 toInt: 9] ? @"YES" : @"NO"));
      
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
