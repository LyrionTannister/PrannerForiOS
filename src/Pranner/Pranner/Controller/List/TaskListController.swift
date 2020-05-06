//
//  TableViewController.swift
//  Pranner
//
//  Created by Roman on 06.05.2020.
//  Copyright © 2020 DrewMyScreen. All rights reserved.
//

import UIKit

class TaskListController: UITableViewController {

    private var taskList : [Task] = [Task(name: "Task 1", category: "Category 1", priority: nil, deadline: nil),
                                     Task(name: "Task 2", category: "Category 2", priority: nil, deadline: Date()),
                                     Task(name: "Task 3", category: "Category 3", priority: "High", deadline: nil),
                                     Task(name: "Task 4", category: "Category 4", priority: "Standard", deadline: Date())
                                     
    ]
    
    let dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .short
        self.clearsSelectionOnViewWillAppear = false

        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath) as? TaskListCell else {
            fatalError("Cell type")
        }

        let task = taskList[indexPath.row]
        cell.labelTaskName.text = task.name
        cell.labelTaskCategory.text = (task.category ?? "")
        if let deadline = task.deadline {
            cell.labelDeadline.text = dateFormatter.string(from: deadline)
        } else {
            cell.labelDeadline.text = ""
        }

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
