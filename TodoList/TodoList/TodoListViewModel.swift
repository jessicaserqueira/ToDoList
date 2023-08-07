//
//  TodoListViewModel.swift
//  TodoList
//
//  Created by Jessica Serqueira on 04/08/23.
//

import Foundation

protocol TodoListDelegate: AnyObject {
    func addTask(name: String)
    func markAsCompleted(index: Int)
    func removeTask(at index: Int)
    func numberOfTasks() -> Int
    func taskName(at index: Int) -> String
    func isTaskCompleted(at index: Int) -> Bool
}

class TodoListViewModel {
    private var todoItem: [TodoItem] = []
    weak var delegate: TodoListDelegate?
}

extension TodoListViewModel: TodoListDelegate {
    func addTask(name: String) {
        let newItem = TodoItem(name: name)
        todoItem.append(newItem)
    }
    
    func markAsCompleted(index: Int) {
        guard index >= 0, index < todoItem.count else { return }
        todoItem[index].isCompleted = true
    }
    
    func removeTask(at index: Int) {
        guard index >= 0, index < todoItem.count else { return }
        todoItem.remove(at: index)
    }
    
    func numberOfTasks() -> Int {
        return todoItem.count
    }
    
    func taskName(at index: Int) -> String {
        guard index >= 0, index < todoItem.count else { return "" }
        return todoItem[index].name
    }
    
    func isTaskCompleted(at index: Int) -> Bool {
        guard index >= 0, index < todoItem.count else { return false }
        return todoItem[index].isCompleted
    }
}
