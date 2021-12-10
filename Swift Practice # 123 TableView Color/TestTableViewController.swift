//
//  TestTableViewController.swift
//  Swift Practice # 123 TableView Color
//
//  Created by Dogpa's MBAir M1 on 2021/12/10.
//

import UIKit

class TestTableViewController: UITableViewController {
    
    var testArray = [Int]()     //設定一個數字的空Array

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1...Int.random(in: 20..<29) {
            let indexPutInArray = Int.random(in: 1...6)
            testArray.append(indexPutInArray)
        }
        //print(testArray.count)

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return testArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let cell = UITableViewCell()
        cell.textLabel?.text = String(testArray[indexPath.row])
        setTableViewColor(color: testArray[indexPath.row], cell: cell)
        //print(testArray[indexPath.row])
        
        
//        let colorIndex = testArray[indexPath.row]
//        switch colorIndex {
//        case 1:
//            cell.backgroundColor = .red
//        case 2:
//            cell.backgroundColor = UIColor(red: 1/255, green: 18/255, blue: 190/255, alpha: 0.9)
//        case 3:
//            cell.backgroundColor = UIColor(red: 100/255, green: 20/255, blue: 10/255, alpha: 0.9)
//        case 4:
//            cell.backgroundColor = UIColor(red: 50/255, green: 190/255, blue: 10/255, alpha: 0.9)
//        default:
//            cell.backgroundColor = .clear
//        }
        
//        if cell.textLabel?.text != nil {
//            switch cell.textLabel?.text {
//            case "1":
//                cell.backgroundColor = .red
//            case "2":
//                cell.backgroundColor = UIColor(red: 1/255, green: 150/255, blue: 190/255, alpha: 0.9)
//            case "3":
//                cell.backgroundColor = UIColor(red: 100/255, green: 15/255, blue: 80/255, alpha: 0.9)
//            case "4":
//                cell.backgroundColor = UIColor(red: 50/255, green: 210/255, blue: 10/255, alpha: 0.9)
//            default:
//                cell.backgroundColor = .clear
//            }
//        }

        return cell
    }
    
    //自定義Function透過Switch來指派顏色
    func setTableViewColor(color:Int, cell:UITableViewCell) {
        switch color {
        case 1:
            cell.backgroundColor = .yellow
        case 2:
            cell.backgroundColor = UIColor(red: 1/255, green: 18/255, blue: 190/255, alpha: 0.9)
        case 3:
            cell.backgroundColor = UIColor(red: 100/255, green: 20/255, blue: 10/255, alpha: 0.9)
        case 4:
            cell.backgroundColor = UIColor(red: 50/255, green: 190/255, blue: 10/255, alpha: 0.9)
        default:
            cell.backgroundColor = .clear
        }
    }


}
