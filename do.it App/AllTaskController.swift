//
//  AllTaskController.swift
//  do.it App
//
//  Created by William Yulio on 09/05/22.
//

import UIKit
class AllTaskController: UIViewController {
    
    @IBOutlet weak var todoTableView: UITableView!
//    let todos = ["Cuci piring", "WWDC 2022", "Merapikan kamar", "Belajar Swift"]
    var todos = [ToDo(title: "Cuci piring", isChecked: false),ToDo(title: "WWDC 2022", isChecked: false),ToDo(title: "Merapikan kamar", isChecked: false),ToDo(title: "Belajar Swift", isChecked: false),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(hex:0xF8ECD1)
        
        todoTableView.delegate = self
        todoTableView.dataSource = self
        todoTableView.separatorStyle = .none
//        configureItems()
        

    }
    
//    private func configureItems(){
//        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
//    }
    


}

extension AllTaskController: UITableViewDelegate, UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = todoTableView.dequeueReusableCell(withIdentifier: "toDoCell", for: indexPath) as! TableViewCell
        
        let todo = todos[indexPath.row]
        cell.taskLabel.text = todo.title
        cell.uncheckImageView.image = todo.isChecked == true ? UIImage(systemName: "circle.fill") : UIImage(systemName: "circle")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        guard let cell = tableView.cellForRow(at: indexPath) as? TableViewCell else { return }
        
        var todo = todos[indexPath.row]
        todo.isChecked = !todo.isChecked
        todos.remove(at: indexPath.row)
        todos.insert(todo, at: indexPath.row)
        
        cell.uncheckImageView.image = todo.isChecked == true ? UIImage(systemName: "circle.fill") : UIImage(systemName: "circle")
    }
    
}
