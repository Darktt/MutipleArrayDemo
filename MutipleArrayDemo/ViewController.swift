//
//  ViewController.swift
//  MutipleArrayDemo
//
//  Created by Eden on 2022/6/20.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet private weak var tableView: UITableView!
    
    let firstArray: Array<Int> = [1, 2, 3]
    
    let secondArray: Array<Int> = [1, 2, 3]
    
    let thirdArray: Array<Int> = [1, 2, 3]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tableView.register(FirstCell.self)
        self.tableView.register(SecondCell.self)
        self.tableView.register(ThirdCell.self)
        self.tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        self.firstArray.count + self.secondArray.count + self.thirdArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var index = indexPath.row
        
        if index < self.firstArray.count, let cell = tableView.dequeueReusableCell(FirstCell.self, for: indexPath) {
            
            let number = self.firstArray[index]
            
            cell.textLabel?.text = String(number)
            
            return cell
        }
        
        index -= self.firstArray.count
        
        if (0 ..< self.secondArray.count) ~= index, let cell = tableView.dequeueReusableCell(SecondCell.self, for: indexPath) {
            
            let number = self.secondArray[index]
            
            cell.textLabel?.text = String(number)
            
            return cell
        }
        
        index -= self.secondArray.count
        
        if (0 ..< self.thirdArray.count) ~= index, let cell = tableView.dequeueReusableCell(ThirdCell.self, for: indexPath) {
            
            let number = self.thirdArray[index]
            
            cell.textLabel?.text = String(number)
            
            return cell
        }
        
        return UITableViewCell()
    }
}
