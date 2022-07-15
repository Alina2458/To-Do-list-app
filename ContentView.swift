//This is the content view
import SwiftUI

struct ContentView: View {
        
    @StateObject var todoManager = TodoManager()
    
    var body: some View {
        TabView {
            MainTodoListView(todoManager: todoManager)
                .tabItem {
                    Label("Todos", systemImage: "checkmark.circle.fill")
                }
            HowManyMoreView(todoManager: todoManager)
                .tabItem {
                    Label("How many more", systemImage: "number.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
