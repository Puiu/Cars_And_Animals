Cars And Animals
================

UITableView with custom UITableViewCell with UIScrollView project.

The table view shows only 2 cell types, in 2 separate sections. Each cell type contains a UIScrollView with 3 sub views, each with 3 labels.

##Files structure


#####ListsTableViewController
The table view controller class. It is launched from the AppDelegate.
In the ViewDidLoad method it registers the 2 UITableViewCell classes:

* AnimalListTableViewCell
* CarListTableViewCell

#####ListsTVCInterfaceTool
A class used to add the actual table view to the controller. It can be used to add other interface elements to the table view controller.

#####ListManager
This class exposes 2 methods that return an Array of CarModel or AnimalModel.

