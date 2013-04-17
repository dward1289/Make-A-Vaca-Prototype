//
//  NewVacaViewController.m
//  Interface 
//
//  Generated by Interface 2
//  http://lesscode.co.nz/interface
//

#import "NewVacaViewController.h"
#import "HomeViewController.h"
#import "NewVacaWithDatePickerViewController.h"

#import "GradientView.h"
#import "MKMapView+ZoomLevel.h"

@implementation NewVacaViewController
@synthesize tableView1Data;


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return UIInterfaceOrientationIsPortrait(toInterfaceOrientation);
}

- (void)viewDidLoad {
  [super viewDidLoad];
  
  // ----------------------------;
  // View Controller Root View;
  // ----------------------------;
  
  self.view.backgroundColor = [UIColor colorWithRed:0.4 green:0.8 blue:1.0 alpha:1.0];
  UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
  contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  
  // ----------------------------;
  // UINavigationBar -> navigationBar1;
  // ----------------------------;
  
  UINavigationBar *navigationBar1 = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
  navigationBar1.delegate = (id<UINavigationBarDelegate>)self;
  UINavigationItem *navigationBar1BackItem = [[[UINavigationItem alloc] initWithTitle:nil] autorelease];
  UINavigationItem *navigationBar1TopItem = [[[UINavigationItem alloc] initWithTitle:nil] autorelease];
  NSArray *navigationBar1Items = [NSArray arrayWithObjects:navigationBar1BackItem, navigationBar1TopItem, nil];
  [navigationBar1 setItems:navigationBar1Items animated:NO];
  [contentView addSubview:navigationBar1];
  navigationBar1.alpha = 1.0;
  navigationBar1.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;
  navigationBar1.barStyle = UIBarStyleDefault;
  navigationBar1.tintColor = [UIColor colorWithRed:0.8 green:1.0 blue:0.4 alpha:1.0];
  navigationBar1.topItem.title = @"New Vaca";
  [navigationBar1 setTitleVerticalPositionAdjustment:0.0 forBarMetrics:UIBarMetricsDefault];
  NSMutableDictionary *navigationBar1StyleDictionary = [NSMutableDictionary dictionary];
  UIFont *navigationBar1Font = [UIFont fontWithName:@"Cochin-Italic" size:28];
  [navigationBar1StyleDictionary setObject:navigationBar1Font forKey:UITextAttributeFont];
  UIColor *navigationBar1TextColor = [UIColor colorWithRed:0.4 green:0.8 blue:1.0 alpha:1.0];
  [navigationBar1StyleDictionary setObject:navigationBar1TextColor forKey:UITextAttributeTextColor];
  [navigationBar1 setTitleTextAttributes:navigationBar1StyleDictionary];
  
  // ----------------------------;
  // Navigation Bar Lef Button -> barButton1;
  // ----------------------------;
  
  UIBarButtonItem *barButton1 = [[[UIBarButtonItem alloc] initWithTitle:@"Home" style:UIBarButtonItemStyleBordered target:nil action:nil] autorelease];
  NSMutableDictionary *barButton1StyleDictionary = [NSMutableDictionary dictionary];
  UIColor *barButton1TextColor = [UIColor colorWithRed:0.4 green:0.8 blue:1.0 alpha:1.0];
  [barButton1StyleDictionary setObject:barButton1TextColor forKey:UITextAttributeTextColor];
  [barButton1 setTitleTextAttributes:barButton1StyleDictionary forState:UIControlStateNormal];
  barButton1.target = self;
  barButton1.action = @selector(didTap_barButton1:forEvent:);
  
  navigationBar1.topItem.hidesBackButton = NO;
  navigationBar1.backItem.backBarButtonItem = barButton1;
  
  // ----------------------------;
  // Navigation Bar Right Button -> barButton2;
  // ----------------------------;
  
  UIBarButtonItem *barButton2 = [[[UIBarButtonItem alloc] initWithTitle:@"Save" style:UIBarButtonItemStyleBordered target:nil action:nil] autorelease];
  [barButton2 setTintColor:[UIColor colorWithRed:0.4 green:0.8 blue:1.0 alpha:1.0]];
  NSMutableDictionary *barButton2StyleDictionary = [NSMutableDictionary dictionary];
  UIColor *barButton2TextColor = [UIColor colorWithRed:0.8 green:1.0 blue:0.4 alpha:1.0];
  [barButton2StyleDictionary setObject:barButton2TextColor forKey:UITextAttributeTextColor];
  [barButton2 setTitleTextAttributes:barButton2StyleDictionary forState:UIControlStateNormal];
  barButton2.target = self;
  barButton2.action = @selector(didTap_barButton2:forEvent:);
  
  navigationBar1.topItem.rightBarButtonItem = barButton2;
  [navigationBar1 release];
  
  
  // ----------------------------;
  // UITextField -> textField1;
  // ----------------------------;
  
  UITextField *textField1 = [[UITextField alloc] initWithFrame:CGRectMake(100, 57, 201, 31)];
  [contentView addSubview:textField1];
  textField1.alpha = 1.0;
  textField1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  textField1.borderStyle = UITextBorderStyleRoundedRect;
  textField1.textAlignment = UITextAlignmentLeft;
  textField1.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
  textField1.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  textField1.font = [UIFont fontWithName:@".HelveticaNeueUI" size:17.0];
  [textField1 release];
  
  
  // ----------------------------;
  // UILabel -> label1;
  // ----------------------------;
  
  UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(15, 57, 77, 31)];
  [contentView addSubview:label1];
  label1.alpha = 1.0;
  label1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label1.text = @"Name of Trip:";
  label1.textColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label1.backgroundColor = [UIColor colorWithRed:0.4 green:0.8 blue:1.0 alpha:1.0];
  label1.textAlignment = UITextAlignmentLeft;
  label1.shadowOffset = CGSizeMake(0, -1);
  label1.font = [UIFont fontWithName:@".HelveticaNeueUI" size:12.0];
  [label1 release];
  
  
  // ----------------------------;
  // UILabel -> label2;
  // ----------------------------;
  
  UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(54, 137, 38, 31)];
  [contentView addSubview:label2];
  label2.alpha = 1.0;
  label2.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label2.text = @"From:";
  label2.textColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label2.backgroundColor = [UIColor colorWithRed:0.4 green:0.8 blue:1.0 alpha:1.0];
  label2.textAlignment = UITextAlignmentLeft;
  label2.shadowOffset = CGSizeMake(0, -1);
  label2.font = [UIFont fontWithName:@".HelveticaNeueUI" size:12.0];
  [label2 release];
  
  
  // ----------------------------;
  // UITextField -> textField2;
  // ----------------------------;
  
  UITextField *textField2 = [[UITextField alloc] initWithFrame:CGRectMake(100, 137, 85, 31)];
  [contentView addSubview:textField2];
  textField2.alpha = 1.0;
  textField2.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  textField2.borderStyle = UITextBorderStyleRoundedRect;
  textField2.textAlignment = UITextAlignmentLeft;
  textField2.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
  textField2.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  textField2.font = [UIFont fontWithName:@".HelveticaNeueUI" size:17.0];
  [textField2 release];
  
  
  // ----------------------------;
  // UILabel -> label3;
  // ----------------------------;
  
  UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(193, 137, 20, 31)];
  [contentView addSubview:label3];
  label3.alpha = 1.0;
  label3.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  label3.text = @"To:";
  label3.textColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  label3.backgroundColor = [UIColor colorWithRed:0.4 green:0.8 blue:1.0 alpha:1.0];
  label3.textAlignment = UITextAlignmentLeft;
  label3.shadowOffset = CGSizeMake(0, -1);
  label3.font = [UIFont fontWithName:@".HelveticaNeueUI" size:12.0];
  [label3 release];
  
  
  // ----------------------------;
  // UITableView -> tableView1;
  // ----------------------------;
  
  UITableView *tableView1 = [[UITableView alloc] initWithFrame:CGRectMake(0, 261, 320, 199) style:UITableViewStylePlain];
  tableView1.tag = 1;
  tableView1.delegate = (id<UITableViewDelegate>)self;
  tableView1.dataSource = (id<UITableViewDataSource>)self;
  self.tableView1Data = [NSMutableArray array];
  [contentView addSubview:tableView1];
  tableView1.alpha = 1.0;
  tableView1.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  tableView1.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
  tableView1.separatorColor = [UIColor colorWithRed:0.8 green:1.0 blue:0.4 alpha:1.0];
  tableView1.backgroundColor = [UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0];
  [tableView1 release];
  
  
  // ----------------------------;
  // Table View Section -> tableViewSection1;
  // ----------------------------;
  
  NSMutableDictionary *tableViewSection1Data = [NSMutableDictionary dictionary];
  [tableViewSection1Data setObject:@"Don't Forget:  (Add/Delete/Check)" forKey:@"headerText"];
  [tableViewSection1Data setObject:@"" forKey:@"footerText"];
  [tableViewSection1Data setObject:[NSMutableArray array] forKey:@"cells"];
  [self.tableView1Data addObject:tableViewSection1Data];
  
  // ----------------------------;
  // Cell -> tableViewCell1;
  // ----------------------------;
  
  NSMutableDictionary *tableViewCell1Data = [NSMutableDictionary dictionary];
  UITableViewCell *tableViewCell1 = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] autorelease];
  tableViewCell1.textLabel.text = @"Reserve car";
  tableViewCell1.detailTextLabel.text = @"Subtitle";
  tableViewCell1.accessoryType = UITableViewCellAccessoryNone;
  tableViewCell1.textLabel.textColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  tableViewCell1.detailTextLabel.textColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  [tableViewCell1Data setObject:tableViewCell1 forKey:@"cell"];
  [tableViewCell1Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleInsert] forKey:@"editingStyle"];
  [tableViewCell1Data setObject:[NSNumber numberWithInteger:0] forKey:@"indentationLevel"];
  [tableViewCell1Data setObject:[NSNumber numberWithFloat:44] forKey:@"height"];
  [tableViewCell1Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
  [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell1Data];
  
  // ----------------------------;
  // Cell -> tableViewCell2;
  // ----------------------------;
  
  NSMutableDictionary *tableViewCell2Data = [NSMutableDictionary dictionary];
  UITableViewCell *tableViewCell2 = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] autorelease];
  tableViewCell2.textLabel.text = @"Hotel reservation";
  tableViewCell2.detailTextLabel.text = @"Subtitle";
  tableViewCell2.accessoryType = UITableViewCellAccessoryNone;
  tableViewCell2.textLabel.textColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  tableViewCell2.detailTextLabel.textColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  [tableViewCell2Data setObject:tableViewCell2 forKey:@"cell"];
  [tableViewCell2Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
  [tableViewCell2Data setObject:[NSNumber numberWithInteger:0] forKey:@"indentationLevel"];
  [tableViewCell2Data setObject:[NSNumber numberWithFloat:44] forKey:@"height"];
  [tableViewCell2Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
  [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell2Data];
  
  // ----------------------------;
  // Cell -> tableViewCell3;
  // ----------------------------;
  
  NSMutableDictionary *tableViewCell3Data = [NSMutableDictionary dictionary];
  UITableViewCell *tableViewCell3 = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] autorelease];
  tableViewCell3.textLabel.text = @"Map out route";
  tableViewCell3.detailTextLabel.text = @"Subtitle";
  tableViewCell3.accessoryType = UITableViewCellAccessoryNone;
  tableViewCell3.textLabel.textColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  tableViewCell3.detailTextLabel.textColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  [tableViewCell3Data setObject:tableViewCell3 forKey:@"cell"];
  [tableViewCell3Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
  [tableViewCell3Data setObject:[NSNumber numberWithInteger:0] forKey:@"indentationLevel"];
  [tableViewCell3Data setObject:[NSNumber numberWithFloat:44] forKey:@"height"];
  [tableViewCell3Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
  [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell3Data];
  
  // ----------------------------;
  // Cell -> tableViewCell4;
  // ----------------------------;
  
  NSMutableDictionary *tableViewCell4Data = [NSMutableDictionary dictionary];
  UITableViewCell *tableViewCell4 = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] autorelease];
  tableViewCell4.textLabel.text = @"Find activities";
  tableViewCell4.detailTextLabel.text = @"Subtitle";
  tableViewCell4.accessoryType = UITableViewCellAccessoryNone;
  tableViewCell4.textLabel.textColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  tableViewCell4.detailTextLabel.textColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  [tableViewCell4Data setObject:tableViewCell4 forKey:@"cell"];
  [tableViewCell4Data setObject:[NSNumber numberWithInteger:UITableViewCellEditingStyleDelete] forKey:@"editingStyle"];
  [tableViewCell4Data setObject:[NSNumber numberWithInteger:0] forKey:@"indentationLevel"];
  [tableViewCell4Data setObject:[NSNumber numberWithFloat:44] forKey:@"height"];
  [tableViewCell4Data setObject:[NSNumber numberWithBool:YES] forKey:@"showReorderControl"];
  [[tableViewSection1Data objectForKey:@"cells"] addObject:tableViewCell4Data];
  
  // ----------------------------;
  // UITextField -> textField3;
  // ----------------------------;
  
  UITextField *textField3 = [[UITextField alloc] initWithFrame:CGRectMake(215, 137, 85, 31)];
  [contentView addSubview:textField3];
  textField3.alpha = 1.0;
  textField3.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  textField3.borderStyle = UITextBorderStyleRoundedRect;
  textField3.textAlignment = UITextAlignmentLeft;
  textField3.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
  textField3.textColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  textField3.font = [UIFont fontWithName:@".HelveticaNeueUI" size:17.0];
  [textField3 release];
  
  
  // ----------------------------;
  // UIButton -> darkInfoButton1;
  // ----------------------------;
  
  UIButton *darkInfoButton1 = [UIButton buttonWithType:UIButtonTypeInfoDark];
  CGRect darkInfoButton1Rect = darkInfoButton1.frame;
  darkInfoButton1Rect.origin.x = 282;
  darkInfoButton1Rect.origin.y =  230;
  darkInfoButton1.frame = darkInfoButton1Rect;
  [contentView addSubview:darkInfoButton1];
  darkInfoButton1.alpha = 1.0;
  darkInfoButton1.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleBottomMargin;
  [darkInfoButton1 addTarget:self action:@selector(didTap_darkInfoButton1:forEvent:) forControlEvents:UIControlEventTouchUpInside];
  
  
  contentView.frame = self.view.bounds;
  [self.view addSubview:contentView];
  [contentView release];
}

- (void)viewDidUnload {
  self.tableView1Data = nil;
  [super viewDidUnload];
}

- (void)dealloc {
  self.tableView1Data = nil;
  [super dealloc];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault animated:animated];
}

// ----------------
// Table View
// ----------------

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  if (tableView.tag == 1) {;
    return self.tableView1Data.count;
  };
  
  return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    return [[sectionData objectForKey:@"cells"] count];
  };
  
  return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:indexPath.section];
    NSDictionary *cellData =  [[sectionData objectForKey:@"cells"] objectAtIndex:indexPath.row];
    return [cellData objectForKey:@"cell"];
  };
  
  return [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil] autorelease];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    return [sectionData objectForKey:@"headerText"];
  };
  
  return nil;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    return [sectionData objectForKey:@"footerText"];
  };
  
  return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:indexPath.section];
    NSDictionary *cellData =  [[sectionData objectForKey:@"cells"] objectAtIndex:indexPath.row];
    return [[cellData objectForKey:@"height"] floatValue];
  };
  
  return tableView.rowHeight;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    if ([[sectionData objectForKey:@"customHeaderView"] boolValue]) {;
      return [sectionData objectForKey:@"headerView"];
    } else {;
      return nil;
    };
  };
  
  return nil;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    if ([[sectionData objectForKey:@"customFooterView"] boolValue]) {;
      return [sectionData objectForKey:@"footerView"];
    } else {;
      return nil;
    };
  };
  
  return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    if ([[sectionData objectForKey:@"customHeaderView"] boolValue]) {;
      return [[sectionData objectForKey:@"customHeaderViewHeight"] floatValue];
    } else {;
      if (![[sectionData objectForKey:@"headerText"] isEqualToString:@""]) {;
        return 22;
      } else {;
        return 0;
      };
    };
  };
  
  return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:section];
    if ([[sectionData objectForKey:@"customFooterView"] boolValue]) {;
      return [[sectionData objectForKey:@"customFooterViewHeight"] floatValue];
    } else {;
      if (![[sectionData objectForKey:@"footerText"] isEqualToString:@""]) {;
        return 22;
      } else {;
        return 0;
      };
    };
  };
  
  return 0;
}

- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:indexPath.section];
    NSDictionary *cellData =  [[sectionData objectForKey:@"cells"] objectAtIndex:indexPath.row];
    return [[cellData objectForKey:@"indentationLevel"] integerValue];
  };
  
  return 0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  if (tableView.tag == 1) {;
    NSDictionary *sectionData = [self.tableView1Data objectAtIndex:indexPath.section];
    NSDictionary *cellData =  [[sectionData objectForKey:@"cells"] objectAtIndex:indexPath.row];
    NSString *actionSelector = [cellData objectForKey:@"actionSelector"];
    if (actionSelector) {;
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
        [self performSelector:NSSelectorFromString(actionSelector) withObject:cell];
    };
  };
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


// ----------------
// Navigation Bar
// ----------------

- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem *)item {
  [self didTap_barButton1:nil forEvent:nil];
  return NO;
}

// ----------------
// Action
// ----------------

- (void)didTap_barButton1:(id)sender forEvent:(UIEvent *)event {
  HomeViewController *controller = [[HomeViewController alloc] init];
  [self.navigationController pushViewController:controller animated:YES];
  [controller release];
}
- (void)didTap_barButton2:(id)sender forEvent:(UIEvent *)event {
  UIAlertView *alertView = [[UIAlertView alloc] init];
  alertView.title = @"Success";
  alertView.message = @"";
  [alertView addButtonWithTitle:@"OK"];
  [alertView show];
  [alertView release];
}
- (void)didTap_darkInfoButton1:(id)sender forEvent:(UIEvent *)event {
  NewVacaWithDatePickerViewController *controller = [[NewVacaWithDatePickerViewController alloc] init];
  [self.navigationController pushViewController:controller animated:YES];
  [controller release];
}




@end