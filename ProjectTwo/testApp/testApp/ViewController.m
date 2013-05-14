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
        title.backgroundColor = [UIColor redColor];
        title.text = @"this is my title";
        title.textAlignment = NSTextAlignmentCenter;
        title.textColor = [UIColor whiteColor];
        //Add label to view
        [self.view addSubview:title];
    }
    
    UILabel *author = [[UILabel alloc] initWithFrame:CGRectMake(0,37,100,32)];
    if (author != nil)
    {
        author.backgroundColor = [UIColor redColor];
        author.text = @"Author:";
        author.textAlignment = NSTextAlignmentRight;
        author.textColor = [UIColor whiteColor];
        //Add label to view
        [self.view addSubview:author];
    }
    
    UILabel *authorName = [[UILabel alloc] initWithFrame:CGRectMake(100,37,220,32)];
    if (authorName != nil)
    {
        authorName.backgroundColor = [UIColor blueColor];
        authorName.text = @"Author Name Here";
        authorName.textAlignment = NSTextAlignmentLeft;
        authorName.textColor = [UIColor whiteColor];
        //Add label to view
        [self.view addSubview:authorName];
    }
    
    UILabel *published = [[UILabel alloc] initWithFrame:CGRectMake(0,74,100,32)];
    if (published != nil)
    {
        published.backgroundColor = [UIColor redColor];
        published.text = @"Published:";
        published.textAlignment = NSTextAlignmentRight;
        published.textColor = [UIColor whiteColor];
        //Add label to view
        [self.view addSubview:published];
    }
    
    UILabel *pubDate = [[UILabel alloc] initWithFrame:CGRectMake(100,74,220,32)];
    if (pubDate != nil)
    {
        pubDate.backgroundColor = [UIColor blueColor];
        pubDate.text = @"Published Date Here";
        pubDate.textAlignment = NSTextAlignmentLeft;
        pubDate.textColor = [UIColor whiteColor];
        //Add label to view
        [self.view addSubview:pubDate];
    }
    
    UILabel *summary = [[UILabel alloc] initWithFrame:CGRectMake(0,111,100,32)];
    if (summary != nil)
    {
        summary.backgroundColor = [UIColor redColor];
        summary.text = @"Summary:";
        summary.textAlignment = NSTextAlignmentRight;
        summary.textColor = [UIColor whiteColor];
        //Add label to view
        [self.view addSubview:summary];
    }
    
    UILabel *mySummary = [[UILabel alloc] initWithFrame:CGRectMake(0,148,320,120)];
    if (mySummary != nil)
    {
        mySummary.backgroundColor = [UIColor redColor];
        mySummary.text = @"Summary:";
        mySummary.textAlignment = NSTextAlignmentLeft;
        mySummary.textColor = [UIColor whiteColor];
        //Add label to view
        [self.view addSubview:mySummary];
    }
    
    UILabel *items = [[UILabel alloc] initWithFrame:CGRectMake(0,273,100,32)];
    if (items != nil)
    {
        items.backgroundColor = [UIColor redColor];
        items.text = @"List of Items:";
        items.textAlignment = NSTextAlignmentRight;
        items.textColor = [UIColor whiteColor];
        //Add label to view
        [self.view addSubview:items];
    }
    
    UILabel *itemList = [[UILabel alloc] initWithFrame:CGRectMake(0,310,320,48)];
    if (itemList != nil)
    {
        itemList.backgroundColor = [UIColor redColor];
        itemList.text = @"Items:";
        itemList.textAlignment = NSTextAlignmentLeft;
        itemList.textColor = [UIColor whiteColor];
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
