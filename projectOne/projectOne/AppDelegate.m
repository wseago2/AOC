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
    
    // Sticking with astronomy theme.
    
    // float variable, cast to int, output to NSLog
    // Creating several variables to make this work out.
    // Use %.0f to get rid of trailing decimal places.
    float telescopeFocalLength = 2032;
    float eyepieceFocalLength = 10;
    float focalPower = telescopeFocalLength / eyepieceFocalLength;
    float observingPower = (int)focalPower;
    NSLog(@"This configuration yields %f power", focalPower);
    NSLog(@"Observing at %.0f power", observingPower);
    
    // AND, OR Comparison.
    // float, int and BOOL variables.
    // BOOL values YES or NO, all caps.
    // if, else if, else check.
    float visibility = 16.5;
    int temp = 68;
    BOOL homeworkDone = YES;
    if ((homeworkDone = NO) || (visibility < 9.5))
    {
        NSLog(@"I should probably stay in tonight.");
    }
    else if ((temp < 80) && (temp > 40))
    {
        NSLog(@"The weather is good for observing tonight.");
    }
    else
    {
        NSLog(@"I wish the weather was always good, the skies were always clear, and the homework was always done");
    }
    
    // Single For loop.
    // Collecting image data with a one shot color camera.
    for (int i = 1; i <= 10; i++)
    {
        NSLog(@"Collecting color image data for %d minutes.", i);
    }
    
    // Nested loop printing out values to the console.
    // Collecting Image Data with mono CCD camera and color filters.
    for (int c = 1; c <= 3; c++)
    {
        NSLog(@"Using color filter number %d", c);
        for (int i = 1; i<= 10; i++)
        {
            NSLog(@"Collecting image data with filter number %d for %d minutes.", c, i);
        }
    }
    
    // While loop that increments int variable and outputs to the console.
    // Fast mono planetary video camera 60FPS.
    int memCardPercentFull = 0;
    while ( memCardPercentFull < 100 )
    {
        NSLog(@"Video Camera Storage %d percent full.", memCardPercentFull);
        memCardPercentFull++;
    }
    
    // Notes BOOL doesn't work properly, need to research more.
    // Ran out of time for code review...will continue to research and fix.
    // Is it OK that I combined AND, OR comparison and if, else if, else?
    // Like SDI, the story is harder for me than the code.
    // If I have enough time, I will make the nested loop log the filter
    //      color instead of number. Need to research OBJ-C more first.
    // Also, need to research default code for this function when I get
    //      Time. I just commented it out.
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
