//
//  ViewController.swift
//  do.it App
//
//  Created by William Yulio on 28/04/22.
//

import UIKit

extension UIColor {
    convenience init(hex: Int) {
        let components = (
            R: CGFloat((hex >> 16) & 0xff) / 255,
            G: CGFloat((hex >> 08) & 0xff) / 255,
            B: CGFloat((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.R, green: components.G, blue: components.B, alpha: 1)
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var todayLabel: UILabel!
    @IBOutlet weak var dropDownBtnToday: UIButton!
    @IBOutlet weak var addToDoList: UIButton!
    
    var toDoListArr: [dataStructure] = [dataStructure]()
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(hex:0xF8ECD1)
        
//        setUpGestures()
        // Do any additional setup after loading the view.
    }
    
//    @IBAction func todayLabelTapped(_ sender: UITapGestureRecognizer){
//
//    }
//    func setUpGestures(){
//    // Named UILabel as testLabel and UIImageView as dropDownIconImageView
//    self.todayLabel.isUserInteractionEnabled = true
//    let todayLabelTapGesture = UITapGestureRecognizer(target: self, action: #selector(todayLabelTapped))
//    self.todayLabel.addGestureRecognizer(todayLabelTapGesture)
//    self.dropDownBtnToday.isUserInteractionEnabled = true
//    let dropDownBtnTodayTapGesture = UITapGestureRecognizer(target: self, action: #selector(todayLabelTapped))
//    self.todayLabel.addGestureRecognizer(dropDownBtnTodayTapGesture)
//    }

}

//extension ViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//    }
//}
//
//extension ViewController: UITableViewDataSource{
//
//}

