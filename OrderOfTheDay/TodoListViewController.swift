//
//  ViewController.swift
//  OrderOfTheDay
//
//  Created by Renan Avrahami 2017 on 12/21/17.
//  Copyright © 2017 Renan Avrahami. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Name", "Apple", "Darth"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

//Mark - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK - TableView Delegate Method
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(itemArray[indexPath.row])
        
        // Adds/remove a checkmark to a selected cell
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }

        
        // make the selected cell flash gray briefly
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

