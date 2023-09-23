//
//  Expense.swift
//  myExpenses
//
//  Created by Ama Ranasi on 2023-09-23.
//

import SwiftUI

//Expense Model and Sample Data

struct Expense: Identifiable, Hashable{
    var id = UUID().uuidString
    var remark: String
    var amount: Double
    var date: Date
    var type: ExpenseType
    var color: String
}

enum ExpenseType: String{
    case income = "Income"
    case expense = "expenses"
    case all = "ALL"
}

var sample_expenses: [Expense] = [
    Expense(remark: "Transport", amount: 199, date: Date(timeIntervalSince1970: 1652987245), type: .expense, color: "Yellow"),
    Expense(remark: "Food", amount: 250, date: Date(timeIntervalSince1970: 1652814445), type: .expense, color: "Red"),
    Expense(remark: "Housing", amount: 2500, date: Date(timeIntervalSince1970: 1652382445), type: .expense, color: "Green"),
    Expense(remark: "Shopping", amount: 8000, date: Date(timeIntervalSince1970: 1652296045), type: .income, color: "Purple"),
    Expense(remark: "Health Care", amount: 7500, date: Date(timeIntervalSince1970: 1652036845), type: .expense, color: "Red"),
    Expense(remark: "Education", amount: 3800, date: Date(timeIntervalSince1970: 1651691245), type: .expense, color: "Yellow"),
    Expense(remark: "Entertainment", amount: 2564, date: Date(timeIntervalSince1970: 1652036845), type: .expense, color: "Purple"),
    Expense(remark: "Utilities", amount: 5500, date: Date(timeIntervalSince1970: 1651691245), type: .expense, color: "Green"),
    Expense(remark: "Vehicle", amount: 8900, date: Date(timeIntervalSince1970: 1651518445), type: .expense, color: "Yellow"),
    Expense(remark: "Pets", amount: 2450, date: Date(timeIntervalSince1970: 1651432045), type: .expense, color: "Gray"),
]


