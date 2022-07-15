//This is a swift file
import Foundation

struct Todo: Identifiable, Codable {
    
    var id = UUID()
    var title: String
    var isCompleted = false
    
}
