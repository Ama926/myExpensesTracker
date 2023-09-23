//
//  ExpenseViewModel.swift
//  myExpenses
//
//  Created by Ama Ranasi on 2023-09-23.
//

import SwiftUI

class ExpenseViewModel: ObservableObject {
    //properties
    @Published var startDate: Date = Date()
    @Published var endDate: Date = Date()
    @Published var currentMonthStartDate: Date = Date()
    
    //expense/income tab
    @Published var tabName: ExpenseType = .expense
    
    //filter view
    @Published var showFilterView: Bool = false
    
    
    init(){
        //fetching current month starting date
        let calender = Calendar.current
        let components = calender.dateComponents([.year,.month], from: Date())
        
        startDate = calender.date(from: components)!
        currentMonthStartDate = calender.date(from:components)!
        
    }
    
    //a sample data of month september
    
    @Published var expenses: [Expense] = sample_expenses
    
    //fetching current month date string
    func currentMonthDateString()->String{
        return currentMonthStartDate.formatted(date: .abbreviated, time: .omitted) + " - " + Date().formatted(date: .abbreviated, time: .omitted)
        
        
    }
    
    func convertExpensesToCurrency(expenses: [Expense], type: ExpenseType = .all)->String{
        var value: Double = 0
        value = expenses.reduce(0, {partialResult, expense in
            return partialResult + (type == .all ? (expense.type == .expense ? expense.amount : -expense.amount): (expense.type == type ? expense.amount : 0))
            
        })
        return converNumberToPrice(value: value)
        
    }
    
    //coverting selected dates to string
    
    func convertDateToString()->String {
        return startDate.formatted(date: .abbreviated, time: .omitted) + " - " + endDate.formatted(date: .abbreviated, time: .omitted)
    }
    
    //converting number to price
    
    func converNumberToPrice(value: Double)->String{
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
        return formatter.string(from: .init(value: value)) ?? "$0.00"
    }
}

