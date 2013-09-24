//
//  ViewController.m
//  Delegates App
//
//  Created by Jhaybie on 9/23/13.
//  Copyright (c) 2013 Jhaybie. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
{
    SecondViewController *secondViewController;
    __weak IBOutlet UILabel *outputLabel;
}
@end

@implementation ViewController
@synthesize delegate;
@synthesize textDelegate;

#pragma mark ColorDelegate

- (void)changeColor:(UIColor *)color
{
    self.view.backgroundColor = color;
}

#pragma mark TextDelegate

- (void)changeText:(NSString *)text
{
    NSLog(@"%@", outputLabel.text);
    outputLabel.text = [NSString stringWithFormat:@"%@", text];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    secondViewController = [[SecondViewController alloc] initWithNibName: nil
                                                                  bundle: nil];
    secondViewController.delegate = self;
    secondViewController.textDelegate = self;
    [self.view addSubview: secondViewController.view];
}

@end
