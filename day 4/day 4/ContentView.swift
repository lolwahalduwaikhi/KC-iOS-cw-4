//
//  ContentView.swift
//  day 4
//
//  Created by Lulwah alduwaikhi on 06/08/2022.
//

import SwiftUI

struct ContentView: View {
   @State var finalGrade = ""
   @State var Grades = ""
    var body: some View {
        ZStack{
            Color.blue.opacity(0.2)
                .ignoresSafeArea()
                
            Spacer()
            
            VStack{
                Text("حاسبة الدرجات")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Spacer()
                
                Image("calculator")
                    .resizable()
                    .frame(width: 150, height: 150)
TextField("Enter your grade",text: $finalGrade)
                    .background(.white)
                    .textFieldStyle(.roundedBorder)
                
                Text("احسب درجتي")
                    .frame(width: 200, height: 40)
                    .background(.yellow)
                    .onTapGesture {
                        if (Double(finalGrade) ?? 0) >= 90 {
                            
                            Grades = "امتياز"
                        }
                        else if (Double(finalGrade) ?? 0) >= 80 && (Double(finalGrade) ?? 0) < 90 {
                           
                            
                       
                                
                                Grades = " جيد جدا"
                            }
                        
                        else if(Double(finalGrade) ?? 0) >= 70 && (Double(finalGrade) ?? 0) < 80{
                            
                        
                        
                            
                            Grades = "جيد"
       
                        }
                        else if
                            (Double(finalGrade) ?? 0) >= 60 && (Double(finalGrade) ?? 0) < 70 {
                            
                        
                        
                        
                        
                       
                            Grades = "مقبول"
                            
                        }
                        
                        else {
                    
                    Grades = "رسوب"

                }
                               
            }
                    
                Text("لقد حصلت على درجة")
                    
                Spacer()
                
                Text(Grades).font(.largeTitle).bold()
                Spacer()
            }.padding()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
