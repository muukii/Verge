import Foundation
import SwiftUI
import Verge

struct UserListView: View {
  
  let session: Session

  private var users: Derived<[Entity.User]> {
    session.users
  }
           
  var body: some View {
    
    NavigationView {
      StateReader(users).content { state in
        List {
          ForEach(state) { user in
            NavigationLink(destination: UserDetailView(session: self.session, user: user)) {
              Text(user.name)
            }
          }
        }
      }
      .navigationBarTitle("Users")
    }  
  }
}
