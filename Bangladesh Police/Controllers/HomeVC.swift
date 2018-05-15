//
//  HomeVC.swift
//  Bangladesh Police
//
//  Created by RIO on 5/14/18.
//  Copyright © 2018 RIO. All rights reserved.
//

import UIKit

class HomeVC:UIViewController{
    
    var instalall_app_http = "https://itunes.apple.com/us/app/bd-police-helpline/id1169481450?mt=8"
    
    let ewbVc = GoToWebView()
    
    var instructionModel = [InstructionNdHelpModel]()
    var timer = Timer()
    
    override func viewDidLoad() {
        
        let instruction = InstructionNdHelpModel(instructionMustBeRead: "", helpMenu: "")
        
        self.instructionModel.append(instruction)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { // change 2
            

            self.timer = Timer.scheduledTimer(withTimeInterval: 5, repeats: true, block: { (timer) in
                
                self.rotateAnimation(imageView: self.animationView)
            })

        }
            }
    
    
    

    
    @IBOutlet weak var animationView: UIView!
    
    func rotateAnimation(imageView:UIView,duration: CFTimeInterval = 2.0) {
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(.pi * 2.0)
        rotateAnimation.duration = duration
        rotateAnimation.repeatCount = 1;
        
        imageView.layer.add(rotateAnimation, forKey: nil)
    }

    @IBAction func installMore_Application(_ sender: Any) {
        
        let myVC = storyboard?.instantiateViewController(withIdentifier: "GoToWebView") as! GoToWebView
        myVC.url = self.instalall_app_http
        navigationController?.pushViewController(myVC, animated: true)
        
        
    }
    
    
    @IBAction func shareThisApplication(_ sender: Any) {
        
        let activityVc = UIActivityViewController(activityItems: ["https://itunes.apple.com/us/app/bd-police-helpline/id1169481450?mt=8"], applicationActivities: nil)
        activityVc.popoverPresentationController?.sourceView = self.view
        self.present(activityVc, animated: true, completion: nil)
        
        
    }
    
    @IBAction func updateThisApplication(_ sender: Any) {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "GoToWebView") as! GoToWebView
        myVC.url = self.instalall_app_http
        navigationController?.pushViewController(myVC, animated: true)
    }
    
    
    
    @IBAction func instructionMust(_ sender: Any) {
        
        let myVC = storyboard?.instantiateViewController(withIdentifier: "InstructionndHelpVC") as! InstructionndHelpVC
        myVC.catchInstruction = "Instruction Must be Read:আমরা পথ চলতে বিভিন্ন সময় বিভিন্ন ধরনের অসুবিধার সম্মূখীন হই। কারনে অকারনে এসব বিপদে সব সময় নিজের সামর্থে সমাধান করা সম্ভব হয় না। আর দেশের প্রচলিত আইনে আপনার সব সমস্যা সমাধান করার বিধানও নেই। রাষ্ট্রের নিয়ম অনুযায়ী আইনগত ভাবে জনগনের বিপদে সাহায্য করার জন্য রয়েছে বাংলাদেশ পুলিশ বাহিনী। আর পুলিশকে দ্রুত সংবাদ দিতে হলে প্রথম যেটা প্রয়োজন সেটা হলো পুলিশ অফিসারদের মোবাইল নাম্বার। আর সেই প্রয়োজনের কথা বিবেচনা করে বাংলাদেশের সকল ইন্সপেক্টর (ওসি) হইতে আইজিপি (ইন্সপেক্টর জেনারেল অব পুলিশ) পদমর্যাদার এবং বাংলাদেশের সকল থানায় সার্বক্ষনিক দায়িত্বে নিয়োজিত ডিউটি অফিসারদের ব্যবহৃত সরকারী নাম্বার সমূহ নিয়ে এই Software টি তৈরি করা। আশা করি আপনাদের অনাকাঙ্খিত বিপদে নম্বরসমূহ কাজে আসবে নিম্নলিখিত সংবাদ পুলিশ কে জানাতে Software টি ব্যবহার করুনঃ-১। কোন দূর্ঘটনার সংবাদ২। কোন অপমৃত্যু সংবাদ৩। অগ্নিকান্ডের সংবাদ ৪। বড় ধরনের অপরাধ সংঘটনের প্রস্তুতির সংবাদ ৫। কোন পলাতক/ফেরারী অপরাধীদের অবস্থান জানাতে ৬। মাদকদ্রব্য সম্পর্কে তথ্য ৭। অবৈধ আগ্নেয়াস্ত্র সম্পর্কে তথ্য ৮। দাংগা হাংগামা সংঘটনের সংবাদ বিঃ দ্রঃ- অহেতুক বা প্রয়োজন ব্যতীত এই Software এ ব্যবহৃত নাম্বার গুলোতে ফোন করিবেন না।"
        navigationController?.pushViewController(myVC, animated: true)
        
        
    }
    
    @IBAction func helpMenundOption(_ sender: Any) {
        
        
        let myVC = storyboard?.instantiateViewController(withIdentifier: "InstructionndHelpVC") as! InstructionndHelpVC
        myVC.catchInstruction = "Instruction Must be Read:আমরা পথ চলতে বিভিন্ন সময় বিভিন্ন ধরনের অসুবিধার সম্মূখীন হই। কারনে অকারনে এসব বিপদে সব সময় নিজের সামর্থে সমাধান করা সম্ভব হয় না। আর দেশের প্রচলিত আইনে আপনার সব সমস্যা সমাধান করার বিধানও নেই। রাষ্ট্রের নিয়ম অনুযায়ী আইনগত ভাবে জনগনের বিপদে সাহায্য করার জন্য রয়েছে বাংলাদেশ পুলিশ বাহিনী। আর পুলিশকে দ্রুত সংবাদ দিতে হলে প্রথম যেটা প্রয়োজন সেটা হলো পুলিশ অফিসারদের মোবাইল নাম্বার। আর সেই প্রয়োজনের কথা বিবেচনা করে বাংলাদেশের সকল ইন্সপেক্টর (ওসি) হইতে আইজিপি (ইন্সপেক্টর জেনারেল অব পুলিশ) পদমর্যাদার এবং বাংলাদেশের সকল থানায় সার্বক্ষনিক দায়িত্বে নিয়োজিত ডিউটি অফিসারদের ব্যবহৃত সরকারী নাম্বার সমূহ নিয়ে এই Software টি তৈরি করা। আশা করি আপনাদের অনাকাঙ্খিত বিপদে নম্বরসমূহ কাজে আসবে নিম্নলিখিত সংবাদ পুলিশ কে জানাতে Software টি ব্যবহার করুনঃ-১। কোন দূর্ঘটনার সংবাদ২। কোন অপমৃত্যু সংবাদ৩। অগ্নিকান্ডের সংবাদ ৪। বড় ধরনের অপরাধ সংঘটনের প্রস্তুতির সংবাদ ৫। কোন পলাতক/ফেরারী অপরাধীদের অবস্থান জানাতে ৬। মাদকদ্রব্য সম্পর্কে তথ্য ৭। অবৈধ আগ্নেয়াস্ত্র সম্পর্কে তথ্য ৮। দাংগা হাংগামা সংঘটনের সংবাদ বিঃ দ্রঃ- অহেতুক বা প্রয়োজন ব্যতীত এই Software এ ব্যবহৃত নাম্বার গুলোতে ফোন করিবেন না।"
        navigationController?.pushViewController(myVC, animated: true)
        
        
    }
    
    
    
    
}
