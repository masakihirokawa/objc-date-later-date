//
//  ViewController.m
//  LaterDateSample
//
//  Created by Dolice on 2013/04/14.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  NSDate *dates[2] = {nil, nil};
  
  //日時を作成する
  NSCalendar *calendar = [NSCalendar currentCalendar];
  NSDateComponents *components;
  
  //UTCタイムゾーンを設定する
  [calendar setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
  
  //2013/04/11のオブジェクトを作成する
  components = [[NSDateComponents alloc] init];
  [components setYear:2013];
  [components setMonth:4];
  [components setDay:11];
  dates[0] = [calendar dateFromComponents:components];
  
  //2013/04/14のオブジェクトを作成する
  components = [[NSDateComponents alloc] init];
  [components setYear:2013];
  [components setMonth:4];
  [components setDay:14];
  dates[1] = [calendar dateFromComponents:components];
  
  //2つの日時で新しい方の日時を取得する
  for (int i = 1; i < 2; i++) {
    NSLog(@"laterDate: %@", [dates[0] laterDate:dates[i]]);
  }
}

@end
