//
//  AppDelegate.m
//  projectOne
//
//  Created by Wesley Seago on 5/7/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    /*
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
     */
    
    
    //Sticking with astronomy theme.
    //Creating several variables to make this work out.
    //Use %.0f to get rid of trailing decimal places.
    float telescopeFocalLength = 2032;
    float eyepieceFocalLength = 10;
    float focalPower = telescopeFocalLength / eyepieceFocalLength;
    float observingPower = (int)focalPower;
    NSLog(@"This configuration yields %f power", focalPower);
    NSLog(@"Observing at %.0f power", observingPower);
    
    
    /*
     Perform an AND, OR comparison. Use float, int and BOOL types. BOOL values should be YES or NO and written in all caps.
     */
    
    
    /*
     Use an if, else if and else check using any of the data types of your choice.
     */
    
    
    /*
     Perform a single for loop printing out values to the console.
     */
    
    
    /*
     Perform a nested loop printing out values to the console.
     */
    
    
    /*
     Perform a while loop that increments an int variable and outputs to the console.
     */
    
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
