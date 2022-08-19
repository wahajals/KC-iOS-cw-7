//
//  StudentsDetailsModel.swift
//  StudentInfo
//
//  Created by WSS on 17/08/2022.
//

import Foundation

struct StudentsDetailsModel: Identifiable {
    let id = UUID()
    var FullName: String
    var year: Int
    var age: Int
}

var Hamad =
StudentsDetailsModel (FullName: "Hamad", year: 4, age: 21 )

var Khalifa =
StudentsDetailsModel(FullName: "Khalifa", year: 3, age: 20)

var Fatma =
StudentsDetailsModel(FullName: "Fatma", year: 2, age: 19)

var Yousef =
StudentsDetailsModel(FullName: "Yousef", year: 3, age: 20)

var Fahad =
StudentsDetailsModel(FullName: "Fahad", year: 2, age: 19)

var Khalid =
StudentsDetailsModel(FullName: "Khalid", year: 4, age: 21)

var Noor =
StudentsDetailsModel(FullName: "Noor", year: 1, age: 18)

var students = [Hamad,Khalifa,Fatma,Yousef,Fahad,Khalid,Noor]


