//
//  ContentView.swift
//  CoreDatApp
//
//  Created by Mehmet Tarhan on 12.12.2024.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(sortDescriptors: []) var students: FetchedResults<Student>

    var body: some View {
        VStack {
            List(students) { student in
                Text(student.name ?? "Unknown")
            }
            Button("Add Student") {
                let student = Student(context: managedObjectContext)
                student.id = UUID()
                student.name = "Mehmet Tarhan"

                try? managedObjectContext.save()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
