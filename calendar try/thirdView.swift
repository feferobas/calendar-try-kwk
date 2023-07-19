//
//  thirdView.swift
//  calendar try
//
//  Created by Cristiane Andrade on 17/07/23.
//

import SwiftUI
import Foundation
struct thirdView: View {
    @Binding var summary: String
    let string = "01/02/2016"
    
    //let dateFormatter =
    var body: some View {
        Text("Your menstruation started: ")
        Text(summary)
    }
}

struct thirdView_Previews: PreviewProvider {
    static var previews: some View {
        thirdView(summary: .constant(""))
    }
}
