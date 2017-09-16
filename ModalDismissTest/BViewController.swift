import UIKit

class BViewController: UIViewController {

    var presented:UIViewController?


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.presented = segue.destination as? CViewController
    }

}
