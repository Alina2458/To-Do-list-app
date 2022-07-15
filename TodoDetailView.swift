//
//  TodoDetailView.swift
//  Todos
//
//  Created by Alina Fu on 15/7/65 BE.
//

import SwiftUI

struct TodoDetailView: View {
    @Binding var todo: Todo
    
    var body: some View {
        VStack {
            TextField("Enter your todo title here", text: $todo.title)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button {
                todo.isCompleted.toggle()
            } label: {
                Text("Mark as \(todo.isCompleted ? "in" : "")complete")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(todo.isCompleted ? .red : .green)
                    .foregroundColor(.white)
                    .padding()
            }
            Spacer()
        }
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView(todo: .constant(Todo(title: "Water the cat")))
    }
}
