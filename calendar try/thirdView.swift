//
//  thirdView.swift
//  calendar try
//
//  Created by Cristiane Andrade on 17/07/23.
//

import SwiftUI
//import Foundation
struct thirdView: View {
    @State var summary: String
    @State var start: String
    @State var end : String
    @State var endDate: Set<DateComponents>
    var futureDateString: String
   
    var body: some View {
        Text("Your menstruation started: ").onAppear{
            let date = Calendar.current.date(from: endDate.removeFirst())!
            print(date)
            var dateComponent = DateComponents()
            dateComponent.day = 28
            let futureDate = Calendar.current.date(byAdding: dateComponent, to: date)
            print(futureDate!)
            futureDateString = futureDate!.formatted()
        }
        Text(futureDateString)
        Text(summary)
        Text(start)
        Text(end)
        
      //  Text(datesEnd)
        
    }
}

struct thirdView_Previews: PreviewProvider {
    static var previews: some View {
        thirdView(summary: "", start: "", end: "", endDate: Set<DateComponents>())
    }
}
