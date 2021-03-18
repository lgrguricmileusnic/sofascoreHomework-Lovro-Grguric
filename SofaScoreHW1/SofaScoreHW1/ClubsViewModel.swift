//
//  EventsViewModel.swift
//  SofaScoreHW1
//
//  Created by SofaScore Akademija on 16.03.2021..
//

import Foundation



class ClubsViewModel{
    
    private let clubs : [Club] = [Club(id: 0,name: "Johann Franck", desc: "Ugodan topli prostor koji objedinjuje ponudu kavane, bistroa i lounge bara.", address: "Trg bana Jelačića 9", image: "franck"),
                                  Club(id: 1, name: "Club Roko", desc: "Kultni klub u kojemu se već 20 godina održavaju koncerti najuspješnijih glazbenika regije.", address: "Jarunska ulica", image: "roko"),
                                  Club(id: 2, name: "The Best", desc: "Being the FIRST and THE BEST is the main guiding principle for this venue.", address: "Jarun 5", image: "best"),
                                  
                                  //ovdje
                                  Club(id: 3, name: "KSET", desc: "Klub studenata elektrotehnike", address: "Unska ulica 3", image:"kset2"),
                                  
                                  
                                  
                                  Club(id: 4, name: "Sax", desc:"Glazbeni užitak, dobra zabava i vrhunska ugostiteljska ponuda čine Sax! vrhuncem dobre zabave i provoda u gradu Zagrebu.", address: "Palmotićeva 22", image:"sax"),
                                  Club(id: 5, name: "Zags", desc: "Početna točka vašeg izlaska Otvoreno do 03:00 sutra", address: "Selska Cesta 217", image: "zags")]
                    
    func getItemViewClubs() -> [Club] {
        var itemViewClubs : [Club] = []
        
        for i in 0..<clubs.count {
            if ((i+1)%3 != 0 || i == 0){
                itemViewClubs.append(clubs[i])
            }
        }
        return itemViewClubs
    }
    
    func getGalleryViewClubs() -> [Club] {
        var GalleryViewClubs : [Club] = []
        
        for i in 0..<clubs.count {
            if ((i+1)%3 == 0 && i != 0){
                GalleryViewClubs.append(clubs[i])
            }
        }
        
        return GalleryViewClubs
        
    }
}
