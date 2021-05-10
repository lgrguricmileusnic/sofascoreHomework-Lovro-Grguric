//
//  DataMocker.swift
//  homework3
//
//  Created by Lovro Grgurić Mileusnić on 06.05.2021..
//

import Foundation

struct DataMocker {
    var shows: [Show] {
        [Show(id: 0,
              coverArt: "better_call_saul",
              showTitle: "Better Call Saul",
              genre: "Crime/Drama",
              description: "Breaking bad presequel",
              yearOfRelease: 2015,
              numberOfSeasons: 2,
              episodes: [showEpisode(id: 0, episodeTitle: "Better Call Saul 1", dateOfRelease: "12.3.2015.", season: 1),
                         showEpisode(id: 1, episodeTitle: "Better Call Saul 2", dateOfRelease: "19.3.2015.", season: 2)]),
         Show(id: 1,
               coverArt: "mad_men",
               showTitle: "Mad Men",
               genre: "Drama",
               description: "A drama about one of New York's most prestigious ad agencies at the beginning of the 1960s, focusing on one of the firm's most mysterious but extremely talented ad executives, Donald Draper.",
               yearOfRelease: 2015,
               numberOfSeasons: 2,
               episodes: [showEpisode(id: 0, episodeTitle: "Momci s Madisona 1", dateOfRelease: "12.3.2015.", season: 1),
                          showEpisode(id: 1, episodeTitle: "Momci s Madisona 2", dateOfRelease: "19.3.2015.", season: 2)]),
         Show(id: 2,
               coverArt: "the_sopranos",
               showTitle: "The Sopranos",
               genre: "Crime/Drama",
               description: "New Jersey mob boss Tony Soprano deals with personal and professional issues in his home and business life that affect his mental state, leading him to seek professional psychiatric counseling.",
               yearOfRelease: 1999,
               numberOfSeasons: 2,
               episodes: [showEpisode(id: 0, episodeTitle: "Sopranos 1", dateOfRelease: "12.3.1999.", season: 1),
                          showEpisode(id: 1, episodeTitle: "Sopranos 2", dateOfRelease: "19.3.2000.", season: 2)]),
         Show(id: 3,
               coverArt: "the_wire",
               showTitle: "The Wire",
               genre: "Crime/Drama",
               description: "Most awarded crime tv show of the 2000s.",
               yearOfRelease: 2012,
               numberOfSeasons: 2,
               episodes: [showEpisode(id: 0, episodeTitle: "Žica 1", dateOfRelease: "12.3.2011.", season: 1),
                          showEpisode(id: 1, episodeTitle: "Žica 2", dateOfRelease: "19.3.2012.", season: 2)]),
         Show(id: 4,
               coverArt: "true_detective",
               showTitle: "True Detective",
               genre: "Psychological drama/Thriller",
               description: "Seasonal anthology series in which police investigations unearth the personal and professional secrets of those involved, both within and outside the law.",
               yearOfRelease: 2017,
               numberOfSeasons: 2,
               episodes: [showEpisode(id: 0, episodeTitle: "TD 1", dateOfRelease: "12.3.2015.", season: 1),
                          showEpisode(id: 1, episodeTitle: "TD 2", dateOfRelease: "19.3.2015.", season: 2)]),
         Show(id: 5,
               coverArt: "vikings",
               showTitle: "Vikings",
               genre: "Drama",
               description: "Show about vikings.",
               yearOfRelease: 2015,
               numberOfSeasons: 2,
               episodes: [showEpisode(id: 0, episodeTitle: "Vikings 1", dateOfRelease: "12.3.2015.", season: 1),
                          showEpisode(id: 1, episodeTitle: "Vikings 2", dateOfRelease: "19.3.2015.", season: 2)]),

        ]
    }
}
