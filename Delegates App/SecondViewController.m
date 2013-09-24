//
//  SecondViewController.m
//  Delegates App
//
//  Created by Jhaybie on 9/23/13.
//  Copyright (c) 2013 Jhaybie. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

- (IBAction)changeToRed:(id)sender;
- (IBAction)changeToGreen:(id)sender;
- (IBAction)changeToBlue:(id)sender;
- (IBAction)changeToYellow:(id)sender;
- (IBAction)textField:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *text;

@end

@implementation SecondViewController

@synthesize delegate;
@synthesize textDelegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    if (self)
    {
    }
    return self;
}

- (BOOL)textFieldShouldReturn:(UITextField *)text
{
    [self.view endEditing:YES];
    if ([_text.text isEqual: @"red"])
    {
        [delegate changeColor: [UIColor redColor]];
        [textDelegate changeText: @"RED!"];
    } else
        if ([_text.text isEqual: @"blue"])
        {
            [delegate changeColor: [UIColor blueColor]];
            [textDelegate changeText: @"BLUE!"];
        } else
            if ([_text.text isEqual:@"green"])
            {
                [delegate changeColor: [UIColor greenColor]];
                [textDelegate changeText: @"GREEN!"];
            } else
                if ([_text.text isEqual:@"yellow"])
                {
                    [delegate changeColor: [UIColor yellowColor]];
                    [textDelegate changeText: @"YELLOW!"];
                } else
                {
                    [textDelegate changeText: [NSString stringWithFormat: @"%@", _text.text]];
                    [delegate changeColor: [UIColor lightGrayColor]];
                }
    
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.text.delegate = self;
}

- (IBAction)changeToRed:(id)sender
{
    [self.view endEditing:YES];
    [delegate changeColor: [UIColor redColor]];
    [textDelegate changeText: @"RED!"];
}

- (IBAction)changeToGreen:(id)sender
{
    [self.view endEditing:YES];
    [delegate changeColor: [UIColor greenColor]];
    [textDelegate changeText: @"GREEN!"];
}

- (IBAction)changeToBlue:(id)sender
{
    [self.view endEditing:YES];
    [delegate changeColor: [UIColor blueColor]];
    [textDelegate changeText: @"BLUE!"];
}

- (IBAction)changeToYellow:(id)sender
{
    [self.view endEditing:YES];
    [delegate changeColor: [UIColor yellowColor]];
    [textDelegate changeText: @"YELLOW!"];
}

- (IBAction)textField:(id)sender
{
}
@end
