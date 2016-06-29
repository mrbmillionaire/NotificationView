//
//  ViewController.m
//  NotificationView
//
//  Created by Bryan  Miller on 6/27/16.
//  Copyright © 2016 TheIronYard. All rights reserved.
//

#import "ViewController.h"
#import "NotificationView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.

     self.notificationView  = [[NotificationView alloc] initWithFrame:CGRectMake(0,-self.view.frame.size.height, self.view.frame.size.width,self.view.frame.size.height)];
    
    self.notificationView.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview: self.notificationView];
    
    // SwipeDown Gesture setup
    UISwipeGestureRecognizer *swipeDownGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeDown:)];
    
    swipeDownGestureRecognizer.direction = UISwipeGestureRecognizerDirectionDown;
    
    [self.view addGestureRecognizer:swipeDownGestureRecognizer];
    
    //SwipeUp Gesture setup
    
    UISwipeGestureRecognizer *swipeUpGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeUp:)];
    
    swipeUpGestureRecognizer.direction = UISwipeGestureRecognizerDirectionUp;
    
    [self.view addGestureRecognizer:swipeUpGestureRecognizer];
    
    
    
    
//UIView animateWithDuration:1.0 animations:^{
    //notificationView.center = self.view.center;
//}];
    
 }



- (void) swipeDown:(UIGestureRecognizer *)recognizer {
    NSLog(@"swipeDown");
    
    [UIView animateWithDuration: 1.0 animations:^{self.notificationView.center=self.view.center;
    }];
}
- (void) swipeUp:(UIGestureRecognizer * )recognizer {
        NSLog(@"swipeUp");
        
    [UIView animateWithDuration: 1.0 animations:^{
        
    self.notificationView.frame = CGRectMake(0,-self.view.frame.size.height, self.view.frame.size.width,self.view.frame.size.height);
        
    }];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
