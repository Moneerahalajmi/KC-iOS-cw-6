//
//  ContentView.swift
//  BMI
//
//  Created by Moneerah Alajmi on 8/21/22.
//

import SwiftUI

struct ContentView: View {
    @State var Weight = ""
    @State  var Height = ""
    @State var Result = 0.0
    @State var status = ""
    var body: some View {
        ZStack{
            Color.gray
                .opacity(0.3)
                .ignoresSafeArea()
            VStack{
               Text("Calculate Your BMI")
                Image("scale")
                    .resizable()
                    .scaledToFit()
                    
            Text("Enter Height and Weight")
                TextField("Weight", text: $Height)
                TextField("Height", text: $Weight)
            
                Button {
                    Result = BmiCal(w: Double(Weight) ?? 0, h: Double(Height)??, 0)
                    if Result <= 20{
                       status = "Weak"
                    }
                    else if  Result <=25 {
                        status = "Good"
                    } else {
                        status = "Overweight"
                    }
                } label: {
                    Text("Calculate the BMI")
                }
                .padding()
                .background(.yellow.opacity(0.6))
                    .cornerRadius(40)
                    .foregroundColor(.black)
           Text("BMI= \(Result)")
            Text("Status = \(status)")
                
    func BmiCal (w: Double, h: Double)->
    Double {
      return w / (h * h)
    }
    }
    
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
