//
//  ViewController.swift
//  VIPERDocument
//
//  Created by Tayyip Çakmak on 22.09.2021.
//
/*:
 VIPER Design Pattern Nedir ?
 Bu projede VIPER mimarisini daha iyi anlayabilmek için basit bir uygulama yapacağız. Öncelikle VIPER nedir sorusuna yanıt verelim.
 VIPER, View, Interactor, Presenter, Entity, Router’ın baş harflerinden oluşan tasarım desenidir.

 iOS için bugüne kadar tasarlanmış ve iOS uygulama yapısı ile direkt olarak en uyumlu desen VIPER olarak kabul görmektedir. Şimdi bu yapıda yer alan düğümlerden tek tek bahsedelim.

 View : ViewController içerisinde bulunan kodlar diyebiliriz. İçerisinde sadece presenter’den gelen veriler kullanılır, farklı bir işlem yapmaz. Yalnızca ilgili presenter’e bağlıdır.

 Interactor :  Business logic işlemlerinin yapıldığı kısımdır. (Business logic : uygulamanın mantığını ve gerekli tüm servisleri kapsar.)

 Presenter : User işlemlerine göre Interactordan data alır ve bunu göstermek  için View katmanına aktarır. View ile Interactor arasında köprü görevi görür.

 Entity : Interactor tarafından kullanılan model nesnelerini içerir. Entity’lerin sadece Interactor tarafından kullanılması çok önemlidir.

 Router : Hangi ekranların ne zaman gösterileceğini belirlendiği uygulama geçiş akışın bulunduğu katmandır. Ayrıca geçiş animasyonlarda bu katmanda bulunur. Router yalnızca Presenter ile iletişime geçer.
 
 Projemizin amacı oluşturduğumuz label içerisinde istediğimiz text mesajını yazdırmak olacak, fakat VIPER mimarisine göre yapacağız. Bu sebepten label'ımız View class'ında, text mesajımız Interactor class'ında bulunacak bilgilerin taşınma köprüsü Presenter, sayfaların kordinasyonunu ise Router class'ı tarafından sağlanacak. Entity ise modelimizi oluşturduğumuz class olacak ve son olarak tüm class'ların çalıştırılacağı bir ModelBuilder class'ı oluşturacağız.
 1 Şimdi uygulamamızı yazmaya geçebiliriz. Öncelikle View'imizin yani ViewController class'ımızın içerisine ViewProtocol adında bir protokol oluşturalım. Protocol Nedir ? Protokol, belirli bir göreve veya işlevsellik parçasına uyan yöntemlerin, özelliklerin ve diğer gereksinimlerin bir planını tanımlar. Protokol daha sonra bu gereksinimlerin gerçek bir uygulamasını sağlamak için bir class, struct veya enum tarafından benimsenebilir.
 2 Ardından extension kullanarak oluşturduğumuz protokolü class'ımıza ekleyelim. Extension Nedir ? Extension yapısı Swift’te kodumuzda varolan sınıflara, protokollere veya yapılara yeni işlevler eklememizi sağlar.
 3 Main Storyboard'ımızda bir adet UILabel oluşturalım ve ViewController class'ımızda helloLabel olarak tanımlayalım.
 
 
*/






import UIKit

//1
protocol ViewProtocol: class {
    func updateTitle(title: String) -> (Void)
}

class ViewController: UIViewController {
    //3
    @IBOutlet weak var helloLabel: UILabel!
    
    var presenter: PresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.presenter.viewDidLoad()
    }


}
//2
extension ViewController: ViewProtocol {
    func updateTitle(title: String) {
        helloLabel.text =  title
    }
    
    
}

