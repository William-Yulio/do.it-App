//
//  AddTaskController.swift
//  do.it App
//
//  Created by William Yulio on 29/04/22.
//

import UIKit
class AddTaskController: UIViewController {
    
    
    @IBOutlet weak var taskName: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(hex:0xF8ECD1)
        
//        configureItems()
        

    }
    
//    private func configureItems(){
//        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
//    }
    


}
