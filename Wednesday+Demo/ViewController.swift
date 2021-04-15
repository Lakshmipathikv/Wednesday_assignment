//
//  ViewController.swift
//  Wednesday+Demo
//
//  Created by lakshmipathi on 15/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var listTableView: UITableView!
    
    let completeArray = ["Lakshmi", "222", "tilak","Pathi","122", "007"]

    var alphabeticArray =  [String]()
    var numericArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for item in completeArray {
            if item.isNumber() {
               // print("\(item) is number")
                alphabeticArray.append(item)

            }
            else {
               // print("\(item) is string")
                numericArray.append(item)
            }
        }
           
        // Do any additional setup after loading the view.
        listTableView.delegate = self
        listTableView.dataSource = self
    }
    

}

extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return numericArray.count
        }
        return alphabeticArray.count
    }


   func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        guard section == 1 else {
            return "String"
        }
        return "Number"
   }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        var text = ""
        if indexPath.section == 0 {
            text = numericArray[indexPath.row]
        }
        else {
            text = alphabeticArray[indexPath.row]
        }

        cell.textLabel?.text = text

              // Configure the cell...
        return cell
    }


    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {


        (view as! UITableViewHeaderFooterView).contentView.backgroundColor = UIColor.red.withAlphaComponent(0.4)
        (view as! UITableViewHeaderFooterView).textLabel?.textColor = UIColor.yellow

        }

    
}

