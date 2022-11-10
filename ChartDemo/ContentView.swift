//
//  ContentView.swift
//  ChartDemo
//
//  Created by M W on 10/11/2022.
//

import Charts
import SwiftUI

struct Profit: Identifiable {
    let department: String
    let profit: Double
    var id: String { department }
}

struct ContentView: View {
    let data: [Profit] = [
        Profit(department: "Production", profit: 15000),
        Profit(department: "Marketing", profit: 8000),
        Profit(department: "Finance", profit: 10000),
    ]

    var body: some View {
        List {
            Chart(data) {
                BarMark(
                    x: .value("Department", $0.department),
                    y: .value("Profit", $0.profit)
                )
            }
            .frame(height: 250)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
