//
//  SLLiveViewController.h
//  ShowLive
//
//  Created by gongxin on 2018/4/12.
//  Copyright © 2018年 vning. All rights reserved.
//

#import "BaseViewController.h"
#import "SLLiveBaseViewController.h"
#import "SLLiveStartModel.h"
@interface SLLiveViewController : SLLiveBaseViewController

//直播间开播数据
@property(nonatomic,strong)SLLiveStartModel * startModel;

@property(nonatomic,assign)BOOL living;

@end
