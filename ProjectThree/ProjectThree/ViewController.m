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
-(int)Add:(NSInteger)myNumberOne toInt:(NSInteger)myNumberTwo
{
    return (myNumberOne + myNumberTwo);
}

//Compare function.
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
-(NSString*)Append:(NSString*)myFirstString appendWith:(NSString*)mySecondString
{
    NSMutableString *appendString = [[NSMutableString alloc] initWithString:myFirstString];
    NSString *myNewString = [appendString stringByAppendingString:mySecondString];
    return myNewString;
}

//DisplayAlertWithString function.
-(void)DisplayAlertWithString:(NSString*)myAlertMessage
{
    UIAlertView *dawsAlert = [[UIAlertView alloc]
                            initWithTitle: @"Announcement"
                            message: myAlertMessage
                            delegate: nil
                            cancelButtonTitle:@"OK"
                            otherButtonTitles:nil];
    if (dawsAlert != nil)
    {
    [dawsAlert show];
    }
}

- (void)viewDidLoad
{
    
//    NSLog(@"%@", [self Append:@"I think " appendWith:@"this should work!"]);
//    NSLog(@"%@", ([self Compare: 9 toInt: 9] ? @"YES" : @"NO"));
//    NSLog(@"%@", ([self Compare: 9 toInt: 5] ? @"YES" : @"NO"));
//    NSLog(@"%d", [self Add: 8 toInt:7]);
 
//Call append function, send through DAWS.
    NSString *alertString = [self Append:@"This is very different" appendWith:@" than javascript."];
    [self DisplayAlertWithString:alertString];//call DAWS with message parameter.
    

//Call Add function.
    int mySum = [self Add:6 toInt:5];
    NSNumber *returnedInteger = [[NSNumber alloc] initWithInt:mySum];//change mySum to NSNumber
    NSString *myMessage = [NSString stringWithFormat:@"The number is "];//create message
    NSString *myNumber = [returnedInteger stringValue];//convert to string and store in variable
    NSString *appendedAlertMessage = [self Append:myMessage appendWith:myNumber];//append message.
    [self DisplayAlertWithString:appendedAlertMessage];//call DAWS with message parameter.
//    NSLog(@"mySum equals %d", mySum);
//    NSLog(@"returnedInteger equals %@", returnedInteger);
//    NSLog(@"integerToString equals %@", integerToString);
//    NSLog(@"myMessage equals: %@", myMessage);
//    NSLog(@"%@", myNumber);
//    NSLog(@"%@", appendedAlertMessage);
    
//Calling the Compare function.
    int hoursStudy = 5;
    int hoursCoding = 5;
    BOOL myComparison = [self Compare:hoursStudy toInt:hoursCoding];
    NSString *comparisonString = [NSString stringWithFormat:@"This project took %d hours of research and %d hours of coding.", hoursStudy, hoursCoding];
    if (myComparison ==YES)
    {
    [self DisplayAlertWithString:comparisonString];
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
