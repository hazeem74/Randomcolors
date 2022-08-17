//
//  ColorsTableViewController.swift
//  RandomColors2
//CGFloat.random(in: 0...1)
//  Created by Hazem Abdallah on 16/08/2022.
//

import UIKit

class ColorsTableViewController: UIViewController {
    var colors: [UIColor] = []
    
    enum cells {
        static let colorCell = "colorcell"
    }
    enum segues {
        static let toDetail = "ToColorDetailsVC"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
}
    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(.random())}
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVc = segue.destination as! ColorsDetailsViewController
        destVc.color = sender as? UIColor
    }
}
    extension ColorsTableViewController :   UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cells.colorCell) else{
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        
        return cell
    }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let color = colors[indexPath.row]
            performSegue(withIdentifier: segues.toDetail, sender: color)
        }
    }
    
