package com.example.family_house;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class ExpandableListDataPump {
    public static HashMap<String, List<String>> getData() {
        HashMap<String, List<String>> expandableListDetail = new HashMap<String, List<String>>();

        List<String> cricket = new ArrayList<String>();
        cricket.add("Family House is a 501(c)(3) non-profit charitable organization greatly supported by community donations whose mission is to. It provides a convenient and affordable “home away from home” for patients and their caregivers who must travel to Pittsburgh for medical treatment of life-threatening illness.");

        List<String> football = new ArrayList<String>();
        football.add("Family House is a 501(c)(3) non-profit charitable organization governed by a community Board of Directors. We rely on donations to support the homes and services provided to all guests. \n" +
                "Family House’s charitable care—which is the difference between what a room costs the organization to operate vs. what Family House charges—amounts to more than $1.2 million annually. These funds are provided each year through generous contributions from individuals, companies, foundations, and other organizations.\n");


        List<String> basketball = new ArrayList<String>();
        basketball.add("Family House has three locations in Pittsburgh’s Oakland and Shadyside neighborhoods. Family House Neville is located at 514 N. Neville St., Pittsburgh, PA, 15213 \n" +
                "Family House Shadyside is located at 5245 Centre Ave., Pittsburgh, PA, 15232 and \n" +
                "Family House University Place is located at 116 Thackeray Ave.,  Pittsburgh, PA, 15213.\n");

//        List<String> soccer = new ArrayList<String>();
//        soccer.add("Patients who are seeking medical treatment at Pittsburgh area hospitals, as well as their family members and caregivers, are welcome to stay at Family House. \n" +
//                "In addition, Family House also welcomes medical professionals and health-related students. \n" +
//                "Please contact our housing office for rate information and reservations at 412-647-7777.\n");
//
//        List<String> hockey = new ArrayList<String>();
//        hockey.add("Yes, all patients staying at Family House must have a cargiver who is a person 18 years or older. This person is solely responsible for the patient with whom they are staying. \n" +
//                "They must stay the entire length of the patient’s visit. They must be emotionally and physically able to care for the patient and themselves and be able to assist in possible decision making. \n" +
//                "Multiple caregivers are permitted as long as there is not a lapse in patient support.\n");
//
//        List<String> ice = new ArrayList<String>();
//        ice.add("Providing your visit is medically related and the Pittsburgh-based physician in charge of your care requires that you stay, you are welcome to remain at Family House, based upon availability.; \n" +
//                "Family House will make every effort to accommodate extentions; however, this on a day-by-day basis.\n");
//
//        List<String> fire = new ArrayList<String>();
//        fire.add("Bring any personal items that you will need and be prepared to plan for your meals. A fully equipped community kitchen is available for your meal preparations. \n" +
//                "Family House will provide all bed and bath linens.\n");
//
//        List<String> water = new ArrayList<String>();
//        water.add("All Family House locations are conveniently located near Allegheny Health Network, UPMC Health System, and VA Pittsburgh Health System hospitals. \n");
//
//        List<String> leaf = new ArrayList<String>();
//        leaf.add("Courtesy shuttles operate regularly throughout the day and evening. When you arrive at Family House, a staff member or volunteer will give you a complete shuttle schedule. \n" +
//                "UPMC Family House Guest Shuttle Schedule \n" +
//                "Check in with the house manager for transportation options to and from AHN hospitals. \n");
//
//        List<String> egg = new ArrayList<String>();
//        egg.add("All Family House locations are smoke-free facilities. \n");
//
//        List<String> food = new ArrayList<String>();
//        food.add("Out of concern for the health of our immunosuppressed guests, Family House does not allow pets in any of its facilities. If you will be accompanied by a certified service dog, please notify our housing office when you are making your room request. \n");
//
//        List<String> game = new ArrayList<String>();
//        game.add("Each house has a limited amount of free parking. We suggest you park in one of the hospital parking lots. Ask your house manager about the availability of reduced parking vouchers. \n");
//
//        List<String> play = new ArrayList<String>();
//        play.add("Family House provides a complimentary Grab ‘n Go breakfast Monday through Thursday. Throughout the year, volunteer groups prepare and serve dinners for guests, typically once a week at each house. \n" +
//                "Additionally, there is a complimentary food pantry stocked with essentials so that guests can cook their own meals. \n");
//
//        List<String> cheese = new ArrayList<String>();
//        cheese.add("Coin-operated laundry rooms are available 24 hours a day at each Family House location. \n");
//
//        List<String> cake = new ArrayList<String>();
//        cake.add("Family House does not have a safe for guests. Any valuables brought to Family House must stay with you at all times. Family House is not responsible for any valuables left on our premises. \n");
//
//        List<String> spoon = new ArrayList<String>();
//        spoon.add("Family House guests have access to computer labs daily between 8:00 AM and 10:00 PM. Wireless internet access is also available–more information on guest wi-fi options here. \n");
//
//        List<String> eat = new ArrayList<String>();
//        eat.add("Single room: $52/night \n" +
//                "Double room: $68/night \n" +
//                "Suite: $84/night \n" +
//                "Neville offers single and double rooms.\n" +
//                "Shadyside offers suites.\n" +
//                "University Place offers double rooms and suites.\n" +
//                "* Note that rates are subject to change. \n");
//
//        List<String> fine = new ArrayList<String>();
//        fine.add("Guests must check in between 1:00 PM and 8:00 PM on their day of arrival. Check-out time is 11:00 AM. \n");
//
//        List<String> bad = new ArrayList<String>();
//        bad.add("Effective 2/1/19, all reservations must be cancelled by 4PM the day of check-in. Any reservation cancelled after 4PM will be subject to one night’s charge. If the guest does not show or call to cancel, the room will be charged one night and then the balance of the reservation will be cancelled. \n");
//
//        List<String> good = new ArrayList<String>();
//        good.add("Family House does not provide medical assistance or home care services. Every patient must be accompanied by a caregiver, during their entire stay, to be eligible to stay at Family House. The caregiver must be a person age 18 or over. \n");
//
//        List<String> great = new ArrayList<String>();
//        great.add("Family House accepts Cash, Check, Mastercard, Visa and Discover Card. \n");

        expandableListDetail.put("What is Family House?", cricket);
        expandableListDetail.put("Where is Family House Located?", basketball);
        expandableListDetail.put("How is Family House funded?", football);
//        expandableListDetail.put("Who is eligible to stay at Family House?", soccer);
//        expandableListDetail.put("Do I need a caregiver?", hockey);
//        expandableListDetail.put("How long can we stay at Family House?", ice);
//        expandableListDetail.put("What should we bring?", fire);
//        expandableListDetail.put("Is Family House close to the hospitals?", water);
//        expandableListDetail.put("Is there transportation to and from the hospitals?", leaf);
//        expandableListDetail.put("What is your smoking policy?", egg);
//        expandableListDetail.put("Can I bring my pet?", food);
//        expandableListDetail.put("Where do we park?", game);
//        expandableListDetail.put("Are any meals provided?", play);
//        expandableListDetail.put("Are laundry facilities available?", cheese);
//        expandableListDetail.put("Is there a safe at the facility?", cake);
//        expandableListDetail.put("Will we have computer access?", spoon);
//        expandableListDetail.put("What are your daily guest fees?", eat);
//        expandableListDetail.put("What time is check-in and check-out?", fine);
//        expandableListDetail.put("What is your cancellation policy?", bad);
//        expandableListDetail.put("Does Family House provide medical services?", good);
//        expandableListDetail.put("How do we pay for our stay?", great);

        return expandableListDetail;
    }
}
