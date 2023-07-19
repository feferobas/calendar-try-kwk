//
//  secondView.swift
//  calendar try
//
//  Created by Cristiane Andrade on 17/07/23.
//

import SwiftUI

struct secondView: View {
    @Environment(\.calendar) var calendar
    @State var datesEnd: Set<DateComponents> = []

    var body: some View {
        NavigationStack{
            VStack {
                MultiDatePicker("Select your preferred dates", selection: $datesEnd)
                let end = summary
               //Text(summary)
               
                Text ("Select the menstruation end date \(end)")
                NavigationLink(destination: thirdView(summary: .constant(""))) {
                    Text("Click here to continue")
                }
            }
            .padding()
        }
        
        var summary: String {
            datesEnd.compactMap { components in
                calendar.date(from: components)?.formatted(date: .long, time: .omitted)
            }.formatted()
        }
    }
}

struct secondView_Previews: PreviewProvider {
    static var previews: some View {
        secondView()
    }
}
