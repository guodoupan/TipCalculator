//
//  TipViewController.h
//  TipCalculator
//
//  Created by Doupan Guo on 1/18/15.
//  Copyright (c) 2015 Doupan Guo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TipViewController : UIViewController
#define UIColorFromRGB(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >>  8))/255.0 \
blue:((float)((rgbValue & 0x0000FF) >>  0))/255.0 \
alpha:1.0]
@property (weak, nonatomic) IBOutlet UIScrollView *tipScroller;

@end
