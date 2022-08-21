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
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                    
                Image("scale")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 400)
                TextField("Weight", text: $Weight)
                TextField("Height", text: $Height)
            
                Button {
                    Result = BmiCal(w: Double(Weight) ?? 0, h: Double(Height) ?? 0)
                    if Result <= 20{
                       status = "Weak"
                    }
                    else if  Result <= 25 {
                        status = "Good"
                    } else {
                        status = "Overweight"
                    }
                } label: {
                    Text("Calculate the BMI")
                }
                .font(.system(size: 27, weight: .semibold, design: .rounded))
                .padding()
                .background(.yellow.opacity(0.45))
                    .cornerRadius(40)
                    .foregroundColor(.black)
                    
           Text("BMI= \(Result)")
                    .font(.system(size: 25, weight: .ultraLight, design: .rounded))
            Text("Status = \(status)")
                    .font(.system(size: 25, weight: .ultraLight, design: .rounded))
                
    }
    }
    
        }
    func BmiCal (w: Double, h: Double)->Double{
        return w / (h*h)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
