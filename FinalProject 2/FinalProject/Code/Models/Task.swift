//
//  Task.swift
//  FinalProject
//
//  Created by Yernur Makenov on 06.12.2022.
//

import Foundation

struct TaskType{
    let symbolName: String
    let typeName: String
}

struct Task{
    var taskName: String
    var taskDescription: String
    var taskType: TaskType
    var seconds: Int
    
    var timeStamp: Double
}

enum CountdownState{
    case suspended
    case running
    case paused
}
