//
//  AlternateTableViewCellViewController.h
//  AlternateTableViewCells
//
//  Created by Mahboob on 9/6/15.
//  Copyright (c) 2015 Mahboob. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Define.h"

@interface AlternateTableViewCellViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

{
    UITableView *alternateTableView;
    int numberOfCell;
}
@property (weak, nonatomic) IBOutlet UITextField *txtNumberOfCell;
@property (weak, nonatomic) IBOutlet UIButton *btnCreate;

@end
