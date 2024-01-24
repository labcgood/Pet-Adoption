//
//  ViewController.swift
//  Pet Adoption
//
//  Created by Labe on 2024/1/19.
//

import UIKit

class ViewController: UIViewController {
    //拉IBOutlet
    @IBOutlet weak var catOrDogSegmentedControl: UISegmentedControl!
    @IBOutlet weak var genderSegmetedControl: UISegmentedControl!
    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var petBreedSwitch: UISwitch!
    @IBOutlet weak var adoptionInfoScrollView: UIScrollView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    //ScrollView內元件(View、ImageViewArray、LabelArray)
    @IBOutlet weak var adoptionInfoView: UIView!
    @IBOutlet var animalsImageView: [UIImageView]!
    @IBOutlet var adoptionInfoLabel: [UILabel]!
    
    //建立貓貓物件(利用class)
    let cat1 = Cat(gender: "公", year: 0, month: 3, breed: "米克斯", adoptionInfo: "地點：嘉義市。\n性別：公。\n年齡：3個月。\n品種：米克斯。\n聯絡人：林小姐\n0912345678。", photo: "貓-米克斯，公，三個月")
    let cat2 = Cat(gender: "公", year: 1, month: 0, breed: "暹羅", adoptionInfo: "地點：桃園市。\n性別：公。\n年齡：1歲。\n品種：暹羅。\n聯絡人：廖先生\n0912345678。", photo: "貓-暹羅，公，一歲")
    let cat3 = Cat(gender: "公", year: 1, month: 0, breed: "藍貓", adoptionInfo: "地點：宜蘭縣。\n性別：公。\n年齡：1歲。\n品種：藍貓。\n聯絡人：王小姐\n0912345678。", photo: "貓-藍貓，公，一歲")
    let cat4 = Cat(gender: "公", year: 5, month: 0, breed: "英短", adoptionInfo: "地點：台北市。\n性別：公。\n年齡：5歲。\n品種：英短。\n聯絡人：邱先生\n0912345678。", photo: "貓-英短，公，五歲")
    let cat5 = Cat(gender: "母", year: 0, month: 5, breed: "米克斯", adoptionInfo: "地點：台北市。\n性別：母。\n年齡：5個月。\n品種：米克斯。\n聯絡人：王小姐\n0912345678。", photo: "貓-米克斯，母，五個月")
    let cat6 = Cat(gender: "母", year: 0, month: 6, breed: "米克斯", adoptionInfo: "地點：花蓮縣。\n性別：母。\n年齡：6個月。\n品種：米克斯。\n聯絡人：吳小姐\n0912345678。", photo: "貓-米克斯，母，六個月")
    let cat7 = Cat(gender: "母", year: 2, month: 0, breed: "米克斯", adoptionInfo: "地點：高雄市。\n性別：母。\n年齡：2歲。\n品種：米克斯。\n聯絡人：劉先生\n0912345678。", photo: "貓-米克斯，母，二歲")
    let cat8 = Cat(gender: "母", year: 3, month: 0, breed: "米克斯", adoptionInfo: "地點：台南市。\n性別：母。\n年齡：3歲。\n品種：米克斯。\n聯絡人：林小姐\n0912345678。", photo: "貓-米克斯，母，三歲")
    let cat9 = Cat(gender: "母", year: 6, month: 0, breed: "美短", adoptionInfo: "地點：新北市。\n性別：母。\n年齡：6歲。\n品種：美短。\n聯絡人：林先生\n0912345678。", photo: "貓-美短，母，六歲")
    let cat10 = Cat(gender: "母", year: 7, month: 0, breed: "布偶貓", adoptionInfo: "地點：金門縣。\n性別：母。\n年齡：7歲。\n品種：布偶貓。\n聯絡人：陳先生\n0912345678。", photo: "貓-布偶貓，母，七歲")
    //建立狗狗物件(利用class)
    let dog1 = Dog(gender: "公", year: 0, month: 2, breed: "米克斯", adoptionInfo: "地點：新竹市。\n性別：公。\n年齡：2個月。\n品種：米克斯。\n聯絡人：黃小姐\n0912345678。", photo: "狗-米克斯，公，二個月")
    let dog2 = Dog(gender: "公", year: 1, month: 0, breed: "紅貴彬", adoptionInfo: "地點：台北市。\n性別：公。\n年齡：1歲。\n品種：貴賓。\n聯絡人：金小姐\n0912345678。", photo: "狗-紅貴彬，公，一歲")
    let dog3 = Dog(gender: "公", year: 3, month: 0, breed: "柴犬", adoptionInfo: "地點：新北市。\n性別：公。\n年齡：3歲。\n品種：柴犬。\n聯絡人：王小姐\n0912345678。", photo: "狗-柴犬，公，三歲")
    let dog4 = Dog(gender: "公", year: 8, month: 0, breed: "鬆獅", adoptionInfo: "地點：台東縣。\n性別：公。\n年齡：8歲。\n品種：鬆獅犬。\n聯絡人：王先生\n0912345678。", photo: "狗-鬆獅，公，八歲")
    let dog5 = Dog(gender: "母", year: 0, month: 2, breed: "米克斯", adoptionInfo: "地點：屏東市。\n性別：母。\n年齡：2個月。\n品種：米克斯。\n聯絡人：林小姐\n0912345678。", photo: "狗-米克斯，母，二個月")
    let dog6 = Dog(gender: "母", year: 0, month: 3, breed: "米克斯", adoptionInfo: "地點：高雄市。\n性別：母。\n年齡：3個月。\n品種：米克斯。\n聯絡人：邱先生\n0912345678。", photo: "狗-米克斯，母，三個月")
    let dog7 = Dog(gender: "母", year: 1, month: 0, breed: "法鬥", adoptionInfo: "地點：新竹市。\n性別：母。\n年齡：1歲。\n品種：法鬥。\n聯絡人：艾琳小姐\n0912345678。", photo: "狗-法鬥，母，一歲")
    let dog8 = Dog(gender: "母", year: 6, month: 0, breed: "柴犬", adoptionInfo: "地點：台中市。\n性別：母。\n年齡：6歲。\n品種：柴犬。\n聯絡人：陳先生\n0912345678。", photo: "狗-柴犬，母，六歲")
    let dog9 = Dog(gender: "母", year: 6, month: 0, breed: "米克斯", adoptionInfo: "地點：雲林縣。\n性別：母。\n年齡：6歲。\n品種：米克斯。\n聯絡人：馬小姐\n0912345678。", photo: "狗-米克斯，母，六歲")
    
    //建立動物的Array，分別是放入Cat跟放入Dog類別的物件
    var catsArray = [Cat]()
    var dogsArray = [Dog]()
    
    //自訂function
    
    //顯示被挑選出來的貓咪圖片跟資訊(如果篩選沒有東西的話就放上等待的圖片及文字)，並設定ScrollView的滑動範圍，以免滑到後面沒有內容。
    func showSelectCat(currentCatsArray: [Cat]) {
        if currentCatsArray.count != 0 {
            for i in 0...currentCatsArray.count - 1 {
                animalsImageView[i].image = UIImage(named: currentCatsArray[i].photo)
                adoptionInfoLabel[i].text = currentCatsArray[i].adoptionInfo
            }
            adoptionInfoScrollView.contentSize.width = CGFloat(358*currentCatsArray.count)
        } else if currentCatsArray.count == 0 {
            animalsImageView[0].image = UIImage(named: "wait")
            adoptionInfoLabel[0].text = "等待有緣貓貓"
            adoptionInfoScrollView.contentSize.width = 358
        }
    }
    
    //顯示被挑選出來的狗狗圖片跟資訊(同貓貓)
    func showSelectDog(currentDogsArray: [Dog]) {
        if currentDogsArray.count != 0 {
            for i in 0...currentDogsArray.count - 1 {
                animalsImageView[i].image = UIImage(named: currentDogsArray[i].photo)
                adoptionInfoLabel[i].text = currentDogsArray[i].adoptionInfo
            }
            adoptionInfoScrollView.contentSize.width = CGFloat(358*currentDogsArray.count)
        } else if currentDogsArray.count == 0 {
            animalsImageView[0].image = UIImage(named: "wait")
            adoptionInfoLabel[0].text = "等待有緣狗狗"
            adoptionInfoScrollView.contentSize.width = 358
        }
    }
    
    //把挑選出來的貓咪或狗狗的圖片顯示出來(需要這個function的原因後面會說到)
    func showAdoptionInfo(hiddenIndex: Int) {
        for i in 0...hiddenIndex {
            animalsImageView[i].isHidden = false
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //<SegmetedControl>調整字型、字體大小
        let font = UIFont(name: "NaikaiFont-Light", size: 20)
        if let font = font {
            let textAttributes: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: font]
            catOrDogSegmentedControl.setTitleTextAttributes(textAttributes, for: .normal)
            genderSegmetedControl.setTitleTextAttributes(textAttributes, for: .normal)
        }
        
        //把建立的貓咪加入catsArray
        catsArray.append(cat1)
        catsArray.append(cat2)
        catsArray.append(cat3)
        catsArray.append(cat4)
        catsArray.append(cat5)
        catsArray.append(cat6)
        catsArray.append(cat7)
        catsArray.append(cat8)
        catsArray.append(cat9)
        catsArray.append(cat10)
        //把建立的狗加入dogsArray
        dogsArray.append(dog1)
        dogsArray.append(dog2)
        dogsArray.append(dog3)
        dogsArray.append(dog4)
        dogsArray.append(dog5)
        dogsArray.append(dog6)
        dogsArray.append(dog7)
        dogsArray.append(dog8)
        dogsArray.append(dog9)

    }
  
    //設定Button內容
    @IBAction func mateButton(_ sender: Any) {
        
        //影藏背景圖及顯示ScrollView(因為我在一開始的畫面上是先放上一張圖片來填補空白處，點選配對後要顯示配對結果(ScrollView))
        backgroundImageView.isHidden = true
        adoptionInfoScrollView.isHidden = false
        
        //讓ScrollView顯示位置回到原點(不然位置會停留在上一次滑到的位置)
        let offSet = CGPoint(x: 0, y: 0)
        adoptionInfoScrollView.contentOffset = offSet
        
        //隱藏所有ImageView，避免繼續殘留，在使用者滑到最後一頁時，會露出下一個位置的部分圖片。
        //所以在篩選完動物後會再用上面講到的自訂showAdoptionInfo()，把被篩出來動物的圖片顯示出來。
        for i in 0...animalsImageView.count - 1 {
            animalsImageView[i].isHidden = true
        }
        
        
        //條件判斷
        //建立判斷用的變數(建立新的空Array是為了把抓出來的動物放進去)
        let catOrDog = catOrDogSegmentedControl.selectedSegmentIndex
        let gender = genderSegmetedControl.selectedSegmentIndex
        let age = ageSlider.value
        let breed = petBreedSwitch.isOn
        var newCatArray:[Cat] = []
        var newDogArray:[Dog] = []
        
        //開始篩選
        //如果想領養貓貓(第一行catOrDog == 0就是選擇想養貓貓)，就用for in迴圈來比對每隻貓貓是否符合條件，continue是如果不符合條件，就直接進行下一隻貓貓的比對，這邊依序是比對性別、年齡、是不是米克斯。
        //if gender == 0 && cat.gender == "母" → 這行是指：我抓出一隻貓貓後，判斷以下兩個條件是否相符 → Ⓐ目前SegmentedControll選擇了位置0(公)，Ⓑ我抓出的貓貓是母的
        //如果ⒶⒷ相符，我就繼續進行下一行程式。如果像我現在的舉例，Ⓐ是公的，Ⓑ是母的，就不符合，我直接再次從頭執行迴圈(continue)換抓下一隻貓貓出來比對。
        //也就是說，if的Ⓐ條件是使用者用App畫面設定出來的，Ⓑ條件是我們App提供的貓貓，一直都符合的貓貓就會一直進行下去，直到所以條件篩選完，貓貓就會被放進新創建的Array裡。
        //最後就是把貓貓的資訊用showSelectCat()放進ImageView跟Label裡，再用showAdoptionInfo()把影藏的ImageView顯示出來(理由上面有說到)。
        //else if 就是狗狗的判斷，內容一樣，只是換成狗狗。
        if catOrDog == 0 {
            for cat in catsArray {
                if gender == 0 && cat.gender == "母" {
                    continue
                }
                if gender == 1 && cat.gender == "公" {
                    continue
                }
                if age != 10 {
                    if age > 5 && cat.year <= 5 {
                        continue
                    }
                    if age <= 5 && cat.year > 5 {
                        continue
                    }
                }
                if breed == true && cat.breed == "米克斯" {
                    continue
                }
                newCatArray.append(cat)
            }
            showSelectCat(currentCatsArray: newCatArray)
            showAdoptionInfo(hiddenIndex: newCatArray.count - 1)
        } else if catOrDog == 1 {
            for dog in dogsArray {
                if gender == 0 && dog.gender == "母" {
                    continue
                }
                if gender == 1 && dog.gender == "公" {
                    continue
                }
                if age != 10 {
                    if age > 5 && dog.year <= 5 {
                        continue
                    }
                    if age <= 5 && dog.year > 5 {
                        continue
                    }
                }
                if breed == true && dog.breed == "米克斯" {
                    continue
                }
                newDogArray.append(dog)
            }
            showSelectDog(currentDogsArray: newDogArray)
            showAdoptionInfo(hiddenIndex: newDogArray.count - 1)
        }
    }
}
