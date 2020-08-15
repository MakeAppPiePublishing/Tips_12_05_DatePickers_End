//
//  ContentView.swift
//  pickers
//
//  Created by Steven Lipton on 8/13/20.
//

import SwiftUI

struct ContentView: View {
    @State var date:Date = Date()
    
    var body: some View {
        VStack {
            Text("Hello, DatePicker!")
                .padding()
            Text("\(date)")
            DatePicker("Date", selection:$date, displayedComponents:[.hourAndMinute])
//            DatePicker("Date", selection:$date)
//                .datePickerStyle(WheelDatePickerStyle())
            DatePicker("Date", selection:$date,in: Date()...Date(timeIntervalSinceNow: 604800))
                .datePickerStyle(CompactDatePickerStyle())
            DatePicker(selection:$date){
                Image(systemName:"calendar").font(.largeTitle)
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
