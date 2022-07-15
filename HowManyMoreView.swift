import SwiftUI

struct HowManyMoreView: View {
    @ObservedObject var todoManager: TodoManager
    
    var body: some View {
        Text("\(todoManager.todos.filter { !$0.isCompleted }.count ) undone todos")
    }
}

struct HowManyMoreView_Previews: PreviewProvider {
    static var previews: some View {
        HowManyMoreView(todoManager: TodoManager())
    }
}
