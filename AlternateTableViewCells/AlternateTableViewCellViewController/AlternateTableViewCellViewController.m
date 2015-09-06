//
//  AlternateTableViewCellViewController.m
//  AlternateTableViewCells
//
//  Created by Mahboob on 9/6/15.
//  Copyright (c) 2015 Mahboob. All rights reserved.
//

#import "AlternateTableViewCellViewController.h"

@interface AlternateTableViewCellViewController ()

@end

@implementation AlternateTableViewCellViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self CreateTableView];
    [_txtNumberOfCell becomeFirstResponder];
    _txtNumberOfCell.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Enter number of cell" attributes:@{NSForegroundColorAttributeName: UIColorFromRGB(0x8c8c8c)}];
    [_btnCreate addTarget:self action:@selector(reloadTable) forControlEvents:UIControlEventTouchUpInside];
    self.view.backgroundColor=UIColorFromRGB(0x2E0303);
    // Do any additional setup after loading the view from its nib.
}

-(void)reloadTable
{
     numberOfCell=[_txtNumberOfCell.text intValue];
    [alternateTableView reloadData];
    [_txtNumberOfCell resignFirstResponder];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)CreateTableView
{
    if (IDIOM==IPAD) {
       alternateTableView=[[UITableView alloc]initWithFrame:CGRectMake(60, 120, 640, 960)];
    }
    else
    {
        alternateTableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 65, 320, 480)];
    }
    
    alternateTableView.dataSource=self;
    alternateTableView.delegate=self;
    alternateTableView.separatorColor=[UIColor clearColor];
    alternateTableView.backgroundColor=UIColorFromRGB(0x2E0303);
    [self.view addSubview:alternateTableView];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return numberOfCell;

}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"MyIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                       reuseIdentifier:MyIdentifier];
    }
    
    if (indexPath.row%2==0) {
        cell.backgroundColor=UIColorFromRGB(0xBF4343);
    }
    else
    {
        cell.backgroundColor=UIColorFromRGB(0x641717);
    }
    cell.textLabel.text = @"Alternate Table View Cell";
    cell.textLabel.textColor=[UIColor whiteColor];
    return cell;
}




@end
