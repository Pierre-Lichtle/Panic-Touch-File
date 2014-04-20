//
//  PLViewController.m
//  PanicTouch
//
//  Created by Jean Pierre Lichtlé on 20/04/2014.
//  Copyright (c) 2014 Apptimism. All rights reserved.
//

#import "PLViewController.h"

@interface PLViewController ()

@end

@implementation PLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    

        
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)startTimerForIPHONE{
    
    self.ticker = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(showActivityForIPHONE) userInfo:Nil repeats:TRUE];
  
}

-(void)resetTimerForIPHONE{
    
    self.iPhoneTimerLabel.text = @"3";
    
}



-(void)showActivityForIPHONE{
    
    int currentTime = [self.iPhoneTimerLabel.text intValue];
    self.newTime = currentTime - 1;
    self.iPhoneTimerLabel.text = [NSString stringWithFormat:@"%d", self.newTime];
    if (self.newTime == 0.0){
        
        [self resetTimerForIPHONE];
        
    }
}



- (IBAction)iPadStartTimerButton:(UIButton *)sender {
}

- (IBAction)iPhoneStartTimerButton:(UIButton *)sender {
    [self startTimerForIPHONE];
    [self showActivityForIPHONE];
    
}
@end
