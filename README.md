# Wrong scroll position of UITableView with using VoiceOver + UIRefreshControl
http://www.openradar.me/radar?id=4958193646043136

**Area**:
Accessibility

**Summary**:
UITableView has wrong content offset and not able to scroll content when tableView consist UIRefreshController and enable VoiceOver. This happens only when the content of tableview is bigger than frame.height - when we can scroll content.

**Steps to Reproduce**:
 - Project:
1. Create project on Xcode;
1. In Storyboard add UINavigationController with and as rootViewController should be UITableViewController
3. Enable "Refreshing" on UITableViewController in Storyboard.
4. Assign class(TableViewController) to UITableViewController
4. In TableViewController.swift add 
 refreshControl?.addTarget(self, action: #selector(TableViewController.refreshHandler), for: .valueChanged)
inside refreshHandler add 
    @objc func refreshHandler(){
        self.refreshControl?.endRefreshing()
    }
5. For testing TableViewController should be scrollable: we return  numberOfRowsInSection as an example 50

 - Testing:
1. Enable "VoiceOver" on device;
2. Open the application(that described above).
3. Select any cell on the tableview
3. Using 3 finger scroll up to call UIRefreshControl

**Expected Results**:
The content(the first cell) of tableview now under navigation bar and user can't scroll down or select the first cell 

**Actual Results**:
User should be able to scroll content and select the first cell

**Version/Build**:
iOS 11.1 (15B5066f) but also reproduce on iOS 10.3

**Configuration**:
iPad (5th generation) (Model A1822) - doesn't matter
