//
//  Challenges.swift
//  API-Sandbox
//
//  Created by Dion Larson on 6/26/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import Foundation
import SwiftyJSON


//// Exercise One
//internal func exerciseOne() {
//    // This would normally be network calls that return `NSData`. We'll show you how to do those soon!
//    // In this case, we are using a local JSON file.
//    guard let jsonURL = NSBundle.mainBundle().URLForResource("Random-User", withExtension: "json") else {
//        print("Could not find Random-User.json!")
//        return
//    }
//    let jsonData = NSData(contentsOfURL: jsonURL)!
//    
//    
//    // Enter SwiftyJSON!
//    // userData now contains a JSON object representing all the data in the JSON file.
//    // This JSON file contains the same data as the tutorial example.
//    let userData = JSON(data: jsonData)
//    
//    // Alright, now we have a JSON object from SwiftyJSON containing the user data!
//    // Let's save the user's first name to a constant!
//    let firstName = userData["results"][0]["name"]["first"].stringValue
//    let lastName = userData["results"][0]["name"]["last"].stringValue
//    let streetName = userData["results"][0]["location"]["street"].stringValue
//    let cityName = userData["results"][0]["location"]["city"].stringValue
//    let stateName = userData["results"][0]["location"]["state"].stringValue
//    let postCode = userData["results"][0]["location"]["postcode"].intValue
//    let emailAddress = userData["results"][0]["email"].stringValue
//    let titleName = userData["results"][0]["name"]["title"].stringValue
//    let phoneNum = userData["results"][0]["cell"].stringValue
//    
//    // Do you see what we did there? We navigated down the JSON heirarchy, asked for "results",
//    // then the first dictionary value of that array, then the dictionary stored in "name",
//    // then the value stored in "first". We  then told it that we wanted the value as a string.
//    
//    /*
//     
//     Now it's your turn to get the rest of the values needed to print the following:
//     
//     "<first name> <last name> lives at <street name> in <city>, <state>, <post code>.
//     If you want to contact <title>. <last name>, you can email <email address> or
//     call at <cell phone number>."
//     
//     */
//    
//    print (" \(firstName) \(lastName) lives at \(streetName) in \(cityName), \(stateName), \(postCode). \n If you want to contact \(titleName) \(lastName), you can email \(emailAddress) \(phoneNum)" )
//    
//    
//    
//}
////MARK: Exercise Two
//internal func exerciseTwo() {
//    // This would normally be network calls that return `NSData`. We'll show you how to do those soon!
//    // In this case, we are using a local JSON file.
//    guard let jsonURL = NSBundle.mainBundle().URLForResource("iTunes-Movies", withExtension: "json") else {
//        print("Could not find Random-User.json!")
//        return
//    }
//    let jsonData = NSData(contentsOfURL: jsonURL)!
//    
//    
//    // Enter SwiftyJSON!
//    // moviesData now contains a JSON object representing all the data in the JSON file.
//    // This JSON file contains the same data as the tutorial example.
//    let moviesData = JSON(data: jsonData)
//    
//    
//    let topMovieData = moviesData["feed"]["entry"][0]
//    let topMovie = Movie(json: topMovieData)
//    
//    // Uncomment this print statement when you are ready to check your code!
//    
//    print("The top movie is \(topMovie.name) by \(topMovie.rightsOwner). It costs $\(topMovie.price) and was released on \(topMovie.releaseDate). You can view it on iTunes here: \(topMovie.link)")
//}
////MARK: Exercise Three
//internal func exerciseThree() {
//    // This would normally be network calls that return `NSData`. We'll show you how to do those soon!
//    // In this case, we are using a local JSON file.
//    guard let jsonURL = NSBundle.mainBundle().URLForResource("iTunes-Movies", withExtension: "json") else {
//        print("Could not find Random-User.json!")
//        return
//    }
//    let jsonData = NSData(contentsOfURL: jsonURL)!
//    
//    // Enter SwiftyJSON!
//    // moviesData now contains a JSON object representing all the data in the JSON file.
//    // This JSON file contains the same data as the tutorial example.
//    let moviesData = JSON(data: jsonData)
//    
//    // We've done you the favor of grabbing an array of JSON objects representing each movie
//    let allMoviesData = moviesData["feed"]["entry"].arrayValue
//    
//    /*
//     
//     Figure out a way to turn the allMoviesData array into Movie structs!
//     
//     */
//    

    
    var allMovies: [Movie] = []
    
    for data in allMoviesData {
       // var newMovieData = Movie(json: data)
        allMovies.append(Movie(json: data))
    }
    
    
    /*
     
     Uncomment the below print statement and then print out the names of the two Disney
     movies in allMovies. A movie is considered to be a "Disney movie" if `rightsOwner`
     contains the `String` "Disney". Iterate over all the values in `allMovies` to check!
     
     */
  
    let allDisneyMovies = allMovies.filter{$0.rightsOwner.containsString("Disney")}
    
    for title in allDisneyMovies {
        print (title.name)
    }
    //print (allMovies)
    
    //print("The following movies are Disney movies: \(allDisneyMovies)")
    
    
    let lessThanFifteen = allMovies.filter{$0.price < 15}
    for prices in lessThanFifteen{
        print (" \(prices.name) $\(prices.price) ")
    }
    
    let moviesReleasedThisYear = allMovies.filter{$0.releaseDate.containsString("2016")}
        for year in moviesReleasedThisYear {
            print ("\(year.name) \(year.releaseDate)")
        }
    
    /*
     
     Uncomment the below print statement and then print out the name and price of each
     movie that costs less than $15. Iterate over all the values in `allMovies` to check!
     
     */
//    print("The following movies are cost less than $15:")
    
    
    
    
    /*
     
     Uncomment the below print statement and then print out the name and release date of
     each movie released in 2016. Iterate over all the values in `allMovies` to check!
     
     */
//    print("The following movies were released in 2016:")
    
    
    
    
}
