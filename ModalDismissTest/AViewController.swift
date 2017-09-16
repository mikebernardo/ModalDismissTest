import UIKit

class AViewController: UIViewController {
    
    var presented:BViewController?

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.presented = segue.destination as? BViewController
    }
    
    @IBAction func dismissAllControllersWorkaround(_ sender: UIView) {
        
        // according to docs, this should work, but the animation is incorrect. The topmost
        // view controller is dismissed without animation
        
        //  self.dismiss(animated: true, completion: nil)
        
        // this is a workaround mentioned in https://stackoverflow.com/a/41942466/1713512 but it has a side
        // effect of showing a black screen while the animation is in progress
        presented?.view.isHidden = true
        presented?.presented?.dismiss(animated: true) // or viewControllerB.dismiss(animated:true) - it should produce the same result: dismiss viewControllerC
        dismiss(animated: false) // dismisses viewControllerB
    }
}
