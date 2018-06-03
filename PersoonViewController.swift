
import UIKit
import MapKit
import CoreLocation

class PersoonViewController: UIViewController {
    var p = Persoon()
    
    @IBOutlet weak var myProfielfoto: UIImageView!
    @IBOutlet weak var myVoornaam: UILabel!
    @IBOutlet weak var myAchternaam: UILabel!
    @IBOutlet weak var myTelefoon: UILabel!
    @IBOutlet weak var myMap: MKMapView!
    @IBOutlet weak var myAdres: UILabel!
    
    @IBAction func profielTapped(_ sender: UITapGestureRecognizer) {
        let imageView = sender.view as! UIImageView
        let newImageView = UIImageView(image: imageView.image)
        newImageView.frame = UIScreen.main.bounds
        newImageView.backgroundColor = .black
        newImageView.contentMode = .scaleAspectFit
        newImageView.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissFullscreenImage))
        newImageView.addGestureRecognizer(tap)
        self.view.addSubview(newImageView)
        self.navigationController?.isNavigationBarHidden = true
        self.tabBarController?.tabBar.isHidden = true
    }
    
    @objc func dismissFullscreenImage(_ sender: UITapGestureRecognizer) {
        self.navigationController?.isNavigationBarHidden = false
        self.tabBarController?.tabBar.isHidden = false
        sender.view?.removeFromSuperview()
    }
    //https://stackoverflow.com/questions/34694377/swift-how-can-i-make-an-image-full-screen-when-clicked-and-then-original-size
    override func viewDidLoad() {
        
        self.myVoornaam.text = p.voornaam
        self.myAchternaam.text = p.naam
        self.myAdres.text = p.straat + " " + p.nummer + ", " + p.gemeente + " " + p.postcode
        self.myTelefoon.text = p.telefoon
        self.myProfielfoto.image = UIImage(named: p.profielfoto)
        let location = CLLocationCoordinate2DMake(p.GPSLat, p.GPSLong)
        let span = MKCoordinateSpanMake(0.2, 0.2)
        let region = MKCoordinateRegion(center: location, span: span)
        myMap.setRegion(region, animated: true)
        let annotation:AnnotationPers = AnnotationPers(coordinate: location, title: "Stay cool buddy", subtitle:p.voornaam+" lives here!")
        myMap.addAnnotation(annotation)
    }
}
