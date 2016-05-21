//
//  ViewController.swift
//  List
//
//  Created by Fco Junior on 5/21/16.
//  Copyright © 2016 Fco Junior. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var arrayList:Array<Person> = []
    
    @IBOutlet weak var feed: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setPerson()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell :CellTableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell") as! CellTableViewCell
        let person = arrayList[indexPath.row]
        cell.setCell(person.name)
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let person = arrayList[indexPath.row]
        let newView:DetailsViewController = self.storyboard?.instantiateViewControllerWithIdentifier("Details") as! DetailsViewController
        
        newView.name = person.name
        
        self.presentViewController(newView, animated: true, completion: nil)
        self.feed.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayList.count
    }

    func setPerson(){
        let people_1 = Person(name: "Junior")
        let people_2 = Person(name: "Pedro")
        let people_3 = Person(name: "Lucas")
        let people_4 = Person(name: "Victor")
        let people_5 = Person(name: "Juan")
        let people_6 = Person(name: "Roberta")
        
        arrayList.append(people_1)
        arrayList.append(people_2)
        arrayList.append(people_3)
        arrayList.append(people_4)
        arrayList.append(people_5)
        arrayList.append(people_6)
    }
    
}

