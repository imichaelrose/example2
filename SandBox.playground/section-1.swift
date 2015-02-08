// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// ***controlling the keyboard***
-----------------------------------------

class UITextFieldDelegate
   
// text field closes when somewhere else on screen is touched
    
override func touchesBegan(touches: NSSet!, withEvent event:UIEvent!){
    
    self.view.endEditing(true)
    
}

// text field closes when "Return" is pressed

func textFieldShouldReturn(textField: UITextfield!) -> Bool{
    
    textField.resignFirstResponder()
    return true
}
----------------------------------------------------





// *** Following and Unfollowing Users**
---------------------------------------------

---------------------------------------------


// *** moving to next segue after user has logged in and is coming back to the app
    // 107
-------------------------------------------------
// this has to be done after ViewDidLoad()

override func viewDidAppear(animated:Bool) {
    
    if PFUser.currentUser() != nil {
        
        self.performSegueWithIdentifier("jumpToUserTable", sender: self)
        
    }
}

--------------------------------------------






// table view (inside TableViewController 107
-------------------------------------------------
    class UITableViewController
        
//this is done after viewDidLoad & didReceiveMemoryWarning

//number of sections
override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
   
    return 1
}
//number of rows in each section
override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) ->Int {
    
    return 3
}
//defines each cell
override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    var cell: UITableViewCell = self.tableView.dequeueReuseableCellWithIdentifier("cell") as UITableViewCell
    
    cell.textLabel?.text = "ROB"
    
    
    
}
//** also cell must have an indentifier in storyboard "cell"


--------------------------------------------------
























