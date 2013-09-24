//
//  SecondViewController.h
//  Delegates App
//
//  Created by Jhaybie on 9/23/13.
//  Copyright (c) 2013 Jhaybie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorDelegate.h"
#import "TextDelegate.h"

@interface SecondViewController : UIViewController <TextDelegate, UITextFieldDelegate>

@property (strong, nonatomic) id <ColorDelegate> delegate;
@property (strong, nonatomic) id <TextDelegate> textDelegate;


@end
