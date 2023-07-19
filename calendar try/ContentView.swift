//
//  ContentView.swift
//  calendar try
//
//  Created by Cristiane Andrade on 17/07/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.calendar) var calendar
    @State var datesStart: Set<DateComponents> = []
    var body: some View {
        NavigationStack {
            VStack {
                MultiDatePicker("Select your menstruation start:", selection: $datesStart)
                let start = summary
                Spacer()
                Text ("Select your menstruation start date: \(start)")
                NavigationLink(destination: secondView() ) {
                    Text("Click here to continue")
                }
                //Text(summary)
                
            }
        }
        .padding()
    }

    var summary: String {
        datesStart.compactMap { components in
            calendar.date(from: components)?.formatted(date: .long, time: .omitted)
        }.formatted()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
