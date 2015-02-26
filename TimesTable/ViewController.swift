//
//  ViewController.swift
//  TimesTable
//
//  Created by Rommel Rico on 2/25/15.
//  Copyright (c) 2015 Rommel Rico. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var table: UITableView!
    
    @IBAction func doSlider(sender: AnyObject) {
        myLabel.text = "\(Int(mySlider.value)) times table"
        table.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        let table = Int(mySlider.value)
        let row = indexPath.row + 1
        let answer = table * row
        cell.textLabel?.text = "\(table) x \(row) = \(answer)"
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}