//
//  ViewController.m
//  testApp
//
//  Created by Wesley Seago on 5/14/13.
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
   
    self.view.backgroundColor = [UIColor blackColor];
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0,0,320,32)];
    if (title != nil)
    {
        title.backgroundColor = [UIColor whiteColor];
        title.text = @"The Lord of the Rings Trilogy";
        title.textAlignment = NSTextAlignmentCenter;
        title.textColor = [UIColor blackColor];
        //Add label to view
        [self.view addSubview:title];
    }
    
    UILabel *author = [[UILabel alloc] initWithFrame:CGRectMake(0,37,100,32)];
    if (author != nil)
    {
        author.backgroundColor = [UIColor redColor];
        author.text = @"Author:";
        author.textAlignment = NSTextAlignmentRight;
        author.textColor = [UIColor grayColor];
        //Add label to view
        [self.view addSubview:author];
    }
    
    UILabel *authorName = [[UILabel alloc] initWithFrame:CGRectMake(100,37,220,32)];
    if (authorName != nil)
    {
        authorName.backgroundColor = [UIColor greenColor];
        authorName.text = @"J.R.R. Tolkien";
        authorName.textAlignment = NSTextAlignmentLeft;
        authorName.textColor = [UIColor orangeColor];
        //Add label to view
        [self.view addSubview:authorName];
    }
    
    UILabel *published = [[UILabel alloc] initWithFrame:CGRectMake(0,74,100,32)];
    if (published != nil)
    {
        published.backgroundColor = [UIColor lightGrayColor];
        published.text = @"Published:";
        published.textAlignment = NSTextAlignmentRight;
        published.textColor = [UIColor darkGrayColor];
        //Add label to view
        [self.view addSubview:published];
    }
    
    UILabel *pubDate = [[UILabel alloc] initWithFrame:CGRectMake(100,74,220,32)];
    if (pubDate != nil)
    {
        pubDate.backgroundColor = [UIColor blueColor];
        pubDate.text = @"1954";
        pubDate.textAlignment = NSTextAlignmentLeft;
        pubDate.textColor = [UIColor yellowColor];
        //Add label to view
        [self.view addSubview:pubDate];
    }
    
    UILabel *summary = [[UILabel alloc] initWithFrame:CGRectMake(0,111,100,32)];
    if (summary != nil)
    {
        summary.backgroundColor = [UIColor cyanColor];
        summary.text = @"Summary";
        summary.textAlignment = NSTextAlignmentLeft;
        summary.textColor = [UIColor magentaColor];
        //Add label to view
        [self.view addSubview:summary];
    }
    
    UILabel *mySummary = [[UILabel alloc] initWithFrame:CGRectMake(0,148,320,120)];
    if (mySummary != nil)
    {
        mySummary.backgroundColor = [UIColor brownColor];
        mySummary.text = @"Classic good vs. evil tail of Frodo the hobbit and his journey to Mordor to destroy the ring of power.";
        mySummary.textAlignment = NSTextAlignmentCenter;
        mySummary.numberOfLines = 0;
        mySummary.lineBreakMode = NSLineBreakByWordWrapping;
        mySummary.textColor = [UIColor purpleColor];
        //Add label to view
        [self.view addSubview:mySummary];
    }
    
    UILabel *items = [[UILabel alloc] initWithFrame:CGRectMake(0,273,100,32)];
    if (items != nil)
    {
        items.backgroundColor = [UIColor colorWithRed:0.851 green:0.702 blue:0.518 alpha:1];
        items.text = @"List of Items:";
        items.textAlignment = NSTextAlignmentLeft;
        items.textColor = [UIColor colorWithRed:0.451 green:0.310 blue:0.188 alpha:1];
        //Add label to view
        [self.view addSubview:items];
    }
    
// Create Strings of Items
    NSString *item0 = @"Orcs";
    NSString *item1 = @"Trolls";
    NSString *item2 = @"Goblins";
    NSString *item3 = @"Balrogs";
    NSString *item4 = @"Cave Trolls";
    
// Create Array
    NSArray *myItems = [NSArray arrayWithObjects: item0, item1, item2, item3, item4, nil];
    
// Create Mutable String
    NSMutableString *mutableItems = [[NSMutableString alloc] init];
    
// Append array items to mutable string.
    for (int i = 0; i < myItems.count; i++)
    {
        [mutableItems appendString:[NSString stringWithFormat:@"%@", myItems[i]]];
    }
    
// NSLog(mutableItems);
    
// Insert commas between array items.
    [mutableItems insertString:@", " atIndex:4];
    [mutableItems insertString:@", " atIndex:12];
    [mutableItems insertString:@", " atIndex:21];
    [mutableItems insertString:@", " atIndex:30];
    
// Add "and".
    [mutableItems insertString:@"and " atIndex:32];
//    NSLog(mutableItems);
    
    
    UILabel *itemList = [[UILabel alloc] initWithFrame:CGRectMake(0,310,320,48)];
    if (itemList != nil)
    {
        itemList.backgroundColor = [UIColor colorWithRed:0.275 green:0.349 blue:0.294 alpha:1];
        itemList.text = mutableItems;
        itemList.textAlignment = NSTextAlignmentCenter;
        itemList.numberOfLines = 2;
        itemList.textColor = [UIColor colorWithRed:0.651 green:0.592 blue:0.486 alpha:1];
        //Add label to view
        [self.view addSubview:itemList];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
   
}

@end
