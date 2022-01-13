//
//  MockData.swift
//  swiftui-paging-tabs
//
//  Created by Crystal Knight on 1/12/22.
//

import Foundation

// MARK: - Florida
// Locations
var mysticalKingdom = Place(
  name: "Mystical Kingdom",
  latitude: 28.4177,
  longitude: -81.5812)

var aroundTheWorld = Place(
  name: "Around the World",
  latitude: 28.3747,
  longitude: -81.5494)

var shrubberyGardens = Place(
  name: "Shrubbery Gardens",
  latitude: 28.0372,
  longitude: -82.4194)

var galaxyStudios = Place(
  name: "Galaxy Studios",
  latitude: 28.4754,
  longitude: -81.4677)

var prettyZoo = Place(
  name: "Pretty Zoo",
  latitude: 28.3529,
  longitude: -81.5907)

// Vacations
var vacation1 = Vacation(
  name: "Orlando 2009",
  imageName: "globe.americas",
  places: [mysticalKingdom, aroundTheWorld, prettyZoo])

var vacation2 = Vacation(
  name: "Florida 2008",
  imageName: "dollarsign.circle",
  places: [mysticalKingdom, aroundTheWorld, prettyZoo, galaxyStudios, shrubberyGardens])

var vacation3 = Vacation(
  name: "Florida 2010",
  imageName: "sun.max.fill",
  places: [mysticalKingdom, aroundTheWorld, shrubberyGardens])

var vacation4 = Vacation(
  name: "Orlando 2011",
  imageName: "sparkles",
  places: [mysticalKingdom, aroundTheWorld, prettyZoo, galaxyStudios])

var vacation5 = Vacation(
  name: "Tampa 2012",
  imageName: "moon.stars.fill",
  places: [shrubberyGardens])

// MARK: - California
// Locations
var grapeCampus = Place(
  name: "Grape Campus",
  latitude: 37.33182,
  longitude: -122.03118)

var mysticalLand = Place(
  name: "Mystical Land",
  latitude: 33.8121,
  longitude: -117.9190)

var reallyBigBridge = Place(
  name: "Really Big Bridge",
  latitude: 37.8199,
  longitude: -122.4783)

var scaryPrison = Place(
  name: "Scary Prison",
  latitude: 37.8270,
  longitude: -122.4230)

var prettyTower = Place(
  name: "Pretty Tower",
  latitude: 37.8024,
  longitude: -122.4058)


// Vacations
var vacation6 = Vacation(
  name: "California 2013",
  imageName: "star.fill",
  places: [grapeCampus, mysticalLand, reallyBigBridge, scaryPrison, prettyTower])

var vacation7 = Vacation(
  name: "Mystical Land 2014",
  imageName: "wand.and.stars",
  places: [mysticalLand])

var vacation8 = Vacation(
  name: "California 2015",
  imageName: "sun.max.circle.fill",
  places: [grapeCampus, reallyBigBridge, prettyTower])

var vacation9 = Vacation(
  name: "Prison Tour 2016",
  imageName: "barcode",
  places: [scaryPrison])

var vacation10 = Vacation(
  name: "Educational Trip 2017",
  imageName: "books.vertical.fill",
  places: [prettyTower, grapeCampus])


// MARK: - Data
var vacations: [Vacation] = [
  vacation1,
  vacation2,
  vacation3,
  vacation4,
  vacation5,
  vacation6,
  vacation7,
  vacation8,
  vacation9,
  vacation10]

// Disclaimer: I have no affiliation with the listed locations.
// I have changed their names because I do not have permission to use their trademarks.
