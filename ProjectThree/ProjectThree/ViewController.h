//
//  ViewController.h
//  ProjectThree
//
//  Created by Wesley Seago on 5/21/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

-(int)Add:(NSInteger)myNumberOne toInt:(NSInteger)myNumberTwo;
-(BOOL)Compare:(NSInteger)myBoolOne toInt:(NSInteger)myBoolTwo;
-(NSString*)Append:(NSString*)myFirstString appendWith:(NSString*)mySecondString;
-(void)DisplayAlertWithString:(NSString*)myAlertMessage;

@end
