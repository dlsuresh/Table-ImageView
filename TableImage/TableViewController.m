//
//  TableViewController.m
//  TableImage
//
//  Created by Harish Kn on 06/02/17.
//  Copyright © 2017 Harish Kn. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "ViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
   _arr1 = [NSArray arrayWithObjects:@"3idiots.jpeg",@"fan.jpeg",@"dhoom.jpeg",@"bahubali.jpeg",@"nenulocal.jpeg", nil];
    self.actorArray =@[@"Amir khan",@"Sharuk Khan",@"Abhishek",@"Prabas",@"Nani"];
    self.starsArray =@[@"3/5",@"3/5",@"3.5/5",@"4/5",@"4/5"];
    self.movieName = @[@"3idiots",@"Fan",@"Dhoom",@"Baahubali",@"Nenu Local"] ;
    self.yearArray =@[@"2007",@"2015",@"2006",@"2015",@"2016"];
    self.reviewArray =@[@"Good",@"Good",@"Good",@"Good",@"Super"];
    
    
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.arr1.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.img1.image = [UIImage imageNamed:[self.arr1 objectAtIndex:indexPath.row]];
    cell.lb01.text = [self.actorArray objectAtIndex:indexPath.row];
    cell.lb02.text = [self.yearArray objectAtIndex:indexPath.row];
      return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *index =[self.tableView indexPathForSelectedRow];
    
    if ([segue.identifier isEqualToString:@"cell"]) {
        ViewController *vm = segue.destinationViewController;
        vm.pic = [self.arr1 objectAtIndex:index.row];
        vm.name = [self.movieName objectAtIndex:index.row];
        vm.actor = [self.actorArray objectAtIndex:index.row];
        vm.stars = [self.starsArray objectAtIndex:index.row];
        vm.review = [self.reviewArray objectAtIndex:index.row];
        vm.year = [self.yearArray objectAtIndex:index.row];
        
    }
}


@end
