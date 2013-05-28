//
//  ViewController.m
//  ProjectFour
//
//  Created by Wesley Seago on 5/28/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "ViewController.h"

#define BUTTON_ZERO 0
#define BUTTON_ONE 1
#define BUTTON_TWO 2

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //set background to white
    self.view.backgroundColor = [UIColor whiteColor];
    
    //create username UILabel
    UILabel *username = [[UILabel alloc] initWithFrame:CGRectMake(5,10,100,32)];
    if (username != nil)
    {
        username.backgroundColor = [UIColor whiteColor]; //Change color to white when done
        username.text = @"Username: ";
        username.textAlignment = NSTextAlignmentCenter;
        username.textColor = [UIColor blackColor];
        [self.view addSubview:username];
    }
    
    //create UITextField
    textField = [[UITextField alloc] initWithFrame:CGRectMake(110,10,205,32)];
    if (textField != nil)
    {
        textField.backgroundColor = [UIColor whiteColor]; //Change color to white when done
        textField.borderStyle = UITextBorderStyleRoundedRect;
        textField.textAlignment = NSTextAlignmentLeft;
        textField.textColor = [UIColor blackColor];
        [self.view addSubview:textField];
    }
    
    //create Login button
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil)
    {
        loginButton.frame = CGRectMake(200,60,115,44);
        loginButton.backgroundColor = [UIColor whiteColor];
        loginButton.tintColor = [UIColor redColor];
        loginButton.tag = BUTTON_ZERO;
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:loginButton];
    }
    
    //create enter username UILabel
    enterUsername = [[UILabel alloc] initWithFrame:CGRectMake(5,120,310,64)];
    if (enterUsername != nil)
    {
        enterUsername.backgroundColor = [UIColor lightGrayColor];
        enterUsername.textColor = [UIColor blueColor];
        enterUsername.text = @"Please Enter Username";
        enterUsername.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:enterUsername];
    }
    
    //create show date button
    UIButton *dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateButton != nil)
    {
        dateButton.frame = CGRectMake(5,240,140,44);
        dateButton.backgroundColor = [UIColor whiteColor];
        dateButton.tintColor = [UIColor blueColor];
        dateButton.tag = BUTTON_ONE;
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:dateButton];
    }
    
    //create info button
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if(infoButton != nil);
    {
        infoButton.frame = CGRectMake(10,320,25,25);
        infoButton.tag = BUTTON_TWO;
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:infoButton];
    }
    
    //create info label
    infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(5,345,310,96)];
    if (infoLabel != nil)
    {
        infoLabel.textColor = [UIColor greenColor];
        infoLabel.textAlignment = NSTextAlignmentLeft;
        infoLabel.numberOfLines = 2;
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

//onClick function
-(void)onClick:(UIButton*)button
{
    //login button
    if (button.tag == BUTTON_ZERO)
    {
        NSLog(@"You pressed button 0");
        NSString *usernameText = [textField text];
        if (usernameText.length >0)
        {
            NSString *thisUser = [[NSString alloc] initWithFormat:@"User: %@ has been logged in.", usernameText];
            enterUsername.textColor = [UIColor blueColor];
            enterUsername.text = thisUser;
            [textField resignFirstResponder];//hide the keyboard so app will remain accessible.
        }
        else
        {
            enterUsername.textColor = [UIColor redColor];
            enterUsername.text = @"Username cannot be empty.";
        }
    }
    //show date button
    else if (button.tag == BUTTON_ONE)
    {
        NSLog(@"You pressed button 1");
        NSDate *date = [NSDate date];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        if (dateFormatter != nil)
        {
            [dateFormatter setDateFormat:@" MMMM dd, yyyy hh:mm:ss a \n zzzz"];
            NSString *datetimeString = [dateFormatter stringFromDate:date];
            UIAlertView *datetimeAlert = [[UIAlertView alloc] initWithTitle:@"Date" message:datetimeString delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [datetimeAlert show];
        }
    }
    //info button
    else if (button.tag == BUTTON_TWO)
    {
        NSLog(@"You pressed button 2");
        infoLabel.text = @"This application was made by\nWesley Seago.";
        [self.view addSubview:infoLabel];
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
