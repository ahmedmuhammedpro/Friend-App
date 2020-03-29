import Foundation

class Friend {
    
    var friendName, friendAge, friendImage: String!
    
    public init() {
        
    }
    
    public init(friendName: String, friendAge: String, friendImage: String) {
        self.friendName = friendName
        self.friendAge = friendAge
        self.friendImage = friendImage
    }
}
