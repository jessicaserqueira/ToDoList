//
//  ViewController.swift
//  TodoList
//
//  Created by Jessica Serqueira on 02/08/23.
//

import UIKit

class TodoListViewController: UIViewController {
    
    private var viewModel: TodoListViewModel
    
    init(viewModel: TodoListViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        self.viewModel.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

extension TodoListViewController: TodoListDelegate {
    func addTask(name: String) {
        
    }
    
    func markAsCompleted(index: Int) {
        
    }
    
    func removeTask(at index: Int) {
        
    }
    
    func numberOfTasks() -> Int {
        return 0
    }
    
    func taskName(at index: Int) -> String {
        return ""
    }
    
    func isTaskCompleted(at index: Int) -> Bool {
        return true
    }
}
