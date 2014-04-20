//
//  PLViewController.h
//  PanicTouch
//
//  Created by Jean Pierre Lichtlé on 20/04/2014.
//  Copyright (c) 2014 Apptimism. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PLViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *iPhoneTimerLabel;
@property (strong, nonatomic) IBOutlet UILabel *iPadTimerLabel;
@property (nonatomic, strong) NSTimer *ticker;
@property (nonatomic) int newTime;


-(IBAction)iPadStartTimerButton:(UIButton *)sender;
-(IBAction)iPhoneStartTimerButton:(UIButton *)sender;
-(IBAction)startTimerForIPHONE;
-(void)showActivityForIPHONE;



@end
