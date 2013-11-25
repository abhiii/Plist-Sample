//
//  ViewController.m
//  plist
//
//  Created by Hadi Hatinoglu on 25/11/13.
//  Copyright (c) 2013 Baraansoft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSString *listPath;
}
@end

@implementation ViewController


-(NSString*)docpath{
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
}
- (void)viewDidLoad
{
    
  listPath=  [[self docpath]stringByAppendingPathComponent:@"sample.plist"];
    NSLog(@"%@",listPath);
    if (![[NSFileManager defaultManager]fileExistsAtPath:listPath]) {
        [[NSFileManager defaultManager]copyItemAtPath:[[NSBundle mainBundle]pathForResource:@"sample" ofType:@"plist"] toPath:listPath error:nil];
    }
    

    
    
    NSArray *ar=@[@"gdffd",@"gfds",@"fdsf"];
    [ar writeToFile:listPath atomically:YES];

    
       [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
