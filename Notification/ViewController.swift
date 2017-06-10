
import UIKit
import UserNotifications


class ViewController: UIViewController {

    @IBAction func notificationPressed(_ sender: Any) {
      // Create a Object UNMutableNotificationContant
        let contant = UNMutableNotificationContent()
        contant.title = "hey"
        contant.subtitle = "irfan khan here"
        contant.badge = 1
        contant.body = "hey sunil are u gone"
        let tigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "timeDone", content: contant, trigger: tigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
        
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge] , completionHandler: {didAllow,error in })
        
        
    
   }
    
    
    
    
    
    
}
