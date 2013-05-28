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
    UILabel *username = [[UILabel alloc] initWithFrame:CGRectMake(5,10,100,32)];
    if (username != nil)
    {
        username.backgroundColor = [UIColor redColor]; //Change color to white when done
        username.text = @"Username: ";
        username.textAlignment = NSTextAlignmentCenter;
        username.textColor = [UIColor blackColor];
        [self.view addSubview:username]; 
    }
    
    //create UITextField
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(110,10,205,32)];
    if (textField != nil)
    {
        textField.backgroundColor = [UIColor yellowColor]; //Change color to white when done
        textField.textAlignment = NSTextAlignmentLeft;
        textField.textColor = [UIColor blackColor];
        [self.view addSubview:textField];
    }
    
    //create Login button
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil)
    {
        loginButton.frame = CGRectMake(200,60,110,32);
        loginButton.backgroundColor = [UIColor whiteColor];
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        [self.view addSubview:loginButton];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
