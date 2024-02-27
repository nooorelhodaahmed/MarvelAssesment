//
//  Readme.md
//  MarvelAssessment
//
//  Created by norelhoda on 27/02/2024.
//

import Foundation


.Marvel assessment is simple project which show the marvels charchters and also show details page for each charchter


#Getting started

1.Download the assessment project files from repository
2.Install CoCoaPods
3.Run pod install so you can install depenedecies in your project
4.Open the project file in xcode
5.Review the code and make sure you understand what it does
6.Run the Active Scheme

   
#Architechture

.Assessment project is impmlemented using MVVM Architechture
.Model has any necessary data
.ViewModel has Buisness Logic
.Interactor work as interface between API and Model
.Controller handles any user interactions and update the Model and viewModel as needed
.project doen't have any a database,usev interface or any complex elements

#Structure

.Modules: the source code file for specific module, Files within module folder are organized in subfolders such as "view" and "Modules"
.Resources: Non-code files  that are used by the project which incluse storyboard and images .
.Network: Files or classes related to communication with external api


#Runing the test

The Marvel Assessment can be tested by using the built-in framework XCTest
