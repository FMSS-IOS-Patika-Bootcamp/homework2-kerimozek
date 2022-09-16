//
//  NewsDetails.swift
//  Week4-Kerim
//
//  Created by Mehmet Kerim ÖZEK on 14.09.2022.
//

import Foundation
import UIKit


//Creating Class for NewsDetails
class NewsDetails {
    
    //Defining Static Constant Array To Use It In Where We Want
    static let data: [News] = [
        
        News(title: "Rick and Morty Season 6 Just Changed Morty Forever",
             image: UIImage(named: "rickandmorty") ?? UIImage(systemName: "photo"),
             detail: "Rick and Morty did the absolute most last week in the season-six premiere. Not only did we learn who the real Big Bad is behind Rick's entire crusade, we also found out that a long-standing fan theory from season two is actually very much true. The premiere was a lot – in the best way possible – so it makes sense that the following episode would switch things up with a classic standalone adventure. Except, once you dive a bit deeper, 'Rick: A Mort Well Lived' is anything but a standalone story, after all.",
             url: "https://www.google.com/search?q=rick+and+morty+season+6"),
        
        
        News(title: "Everything We Know About AoT Final Season Part 3",
             image: UIImage(named: "aot") ?? UIImage(systemName: "photo"),
             detail: "We know Attack on Titan is back in 2023 for its Final Season, now we might have a better idea of when to expect a release date announcement. With the hit anime slowly creeping towards its endgame, we've looked high and low for every scrap and morsel of information about the upcoming season. That even includes news of an upcoming event celebrating Attack on Titan's fourth season. Could a big reveal be imminent?",
             url: "https://www.google.com/search?q=AoT+Final+Season+Part+3"),
        
        News(title: "Watch Adventure Time Movies If You Still Didn't",
             image: UIImage(named: "adventuretime") ?? UIImage(systemName: "photo"),
             detail: "Adventure time: the movie is the first Adventure Time american animated musical comedy movie. The film is produced by Cartoon Network Movies,and distributed by Warner Bros. Pictures. It could be the twelfth Cartoon Network film to be that will released in theaters on December 19, 2014 in RealD 3D and IMAX 3D, on DVD, Blu-ray and Blu-ray 3D on April 7, 2015, and on air to HBO, HBO Family, HBO Comedy and HBO Signature on June 6, 2015, to Cinemax and Moremax on July 11, 2015, to Cartoon Network on October 20, 2016, to ABC on November 22, 2017 (as in ABC's Home for the Holidays), ABC Family on December 1, 2017 (as in ABC Family's 25 Days of Christmas), to FOX on December 24, 2017 (as in FOX's Christmas movie marathon) and to Disney XD on January 12, 2018. The movie is combination of Animation and Live-action. The world premiere is july 2014. The film is created and directed by Pendelton Ward. This is war will be a hit song heard in this film. The film is based on adventure time.",
             url: "https://www.google.com/search?q=adventure+time+movie"),
        
        
        News(title: "Here The Best 5 Family Guy Episodes",
             image: UIImage(named: "familyguy") ?? UIImage(systemName: "photo"),
             detail: "Transgressive, morally misguided but oh-so-damn funny, Family Guy has invaded the adult cartoon sphere since its debut in 1999. Created by Seth MacFarlane, the series follows an atypical family in Quahog, Rhode Island. Father of the house Peter (Seth MacFarlane) leads the show with a tenacity for stupidity, with wife Lois (Alex Borstein) attempting to keep the chaotic house together with kids Chris (Seth Green), Meg (Mila Kunis), and Stewie (Seth MacFarlane), alongside writer-turned-drunk dog Brian (Seth MacFarlane). Running for 20 seasons and counting, Family Guy encapsulates episodes that have had hits, misses, and overtly comedic shock value that keeps viewers on their toes. Fans who love the show immensely have dedicated their time into voting for their favorite episodes via IMDb. Here is what they selected as the best episode of every season!",
             url: "https://www.google.com/search?q=Best+5+Family+Guy+Episodes"),
        
        News(title: "When Will The Gumball Movie Be Released?",
             image: UIImage(named: "gumball") ?? UIImage(systemName: "photo"),
             detail: "The Amazing World of Gumball: The Movie! is the working title for a British animated television film based on the Cartoon Network animated television series The Amazing World of Gumball. It was officially announced to be in development on February 17th, 2021. It is set for release sometime in 2022. The movie will act as a conclusion to the original series, as well as establishing its continuation, The Amazing World of Gumball: The Series.",
             url: "https://www.google.com/search?q=When+Will+The+Gumball+Movie+Be+Released"),
        
        
        News(title: "Did You Remember Johnny Bravo?",
             image: UIImage(named: "johnnybravo") ?? UIImage(systemName: "photo"),
             detail: "'Johnny Bravo' was an animated Cartoon Network sitcom created by Van Partible in 1995. Johnny Bravo was the protagonist of this comedy series and was highly associated with the famous Elvis Presley. He was known for getting himself into the strangest of situations and was the perfect example of how men should not talk to women as they might get beaten up for inappropriate language. Ever wondered Johnny Bravo's age? Though Johnny Bravo is often seen trying to impress women with fancy pick-up lines, he usually tends to exhibit childish characteristics. Although he doesn't have a job and is shown taking karate classes with the kids, his mother sends him a Christmas card, and he is considered to be a 20-year-old adult. A popular Johnny Bravo catchphrase, I am Johnny Bravo, the one-man army! also hints towards his slightly self-indulgent nature as a cartoon character. The series was the second of the network's cartoons and it ended its run in 2004 after four seasons full of adult humor and pop that lasted throughout its run.",
             url: "https://www.google.com/search?q=Did+You+Remember+Johnny+Bravo"),
        
        
        News(title: "Watch Regular Show Movie If You Still Didn't",
             image: UIImage(named: "regularshow") ?? UIImage(systemName: "photo"),
             detail: "The movie was confirmed in the Cartoon Network 2015 Upfront in February. It's a feature-length film and was released during November 2015. The film had a budget of $6 million and the box office is $44 million, making it a box office hit before one year of Sausage Party directed by Conrad Vernon and Greg Tiernan. The 68-minute animated feature became available for digital download on September 1 on electronic sell-through platforms (iTunes, Google Play Movies & TV, Amazon Instant Video, Xbox Video, PlayStation Video, VUDU, and others). The DVD was released by Warner Home Video on October 13, but bonus content is available in both the digital download version and DVD.",
             url: "https://www.google.com/search?q=regular+show+movie"),
        
        
        News(title: "Does Aku die in Samurai Jack season 5?",
             image: UIImage(named: "samuraijack") ?? UIImage(systemName: "photo"),
             detail: "The fifth and final season of Samurai Jack, an American animated series, premiered on Adult Swim's Toonami programming block on March 11, 2017, and concluded its run on May 20, 2017. The announcement of the season came in December 2015, eleven years since the series was originally concluded on Cartoon Network. Genndy Tartakovsky, the series' creator, returned as a director, writer, and storyboarder for this season. The season received universal acclaim from both critics and fans, praising it for its visuals as well as its more dark, intense, and mature tone.",
             url: "https://www.google.com/search?q=samurai+jack+aku+dies")
        
    ]
    
    
}

   
