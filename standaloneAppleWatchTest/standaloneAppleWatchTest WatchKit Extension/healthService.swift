//
//  healthService.swift
//  standaloneAppleWatchTest
//
//  Created by Enkhjargal Gansukh on 3/12/16.
//  Copyright © 2016 Enkhjargal Gansukh. All rights reserved.
//

import Foundation
import HealthKit

class HealthService {

    let healthData = HKHealthStore()
    
    init(){

    }
    
//    func workoutSession(workoutSession: HKWorkoutSession, didChangeToState toState: HKWorkoutSessionState, fromState: HKWorkoutSessionState, date: NSDate) {
//        switch toState {
//        case .Running:
//            startCheckData(date)
//        case .Ended:
//            endCheckData(date)
//        default:
//            print("Unexpected state \(toState)")
//        }
//        
//    }
//    
//    func workoutSession(workoutSession: HKWorkoutSession, didFailWithError error: NSError) {
//        print(error.userInfo)
//    }
//    
//    func startCheckData(date: NSDate){
//        if let query = createHeartRateStreamingQuery(date) {
//            healthData.executeQuery(query)
//        } else {
//            print("cannot check your data")
//        }
//    }
//    func endCheckData(date: NSDate){
//    }
//    
//    func createHeartRateStreamingQuery(workoutStartDate: NSDate) -> HKQuery? {
//        // adding predicate will not work
//        // let predicate = HKQuery.predicateForSamplesWithStartDate(workoutStartDate, endDate: nil, options: HKQueryOptions.None)
//        
//        guard let quantityType = HKObjectType.quantityTypeForIdentifier(HKQuantityTypeIdentifierHeartRate) else { return nil }
//        
//        let heartRateQuery = HKAnchoredObjectQuery(type: quantityType, predicate: nil, anchor: anchor, limit: Int(HKObjectQueryNoLimit)) { (query, sampleObjects, deletedObjects, newAnchor, error) -> Void in
//            guard let newAnchor = newAnchor else {return}
//            self.anchor = newAnchor
//            self.updateHeartRate(sampleObjects)
//        }
//        
//        heartRateQuery.updateHandler = {(query, samples, deleteObjects, newAnchor, error) -> Void in
//            self.anchor = newAnchor!
//            self.updateHeartRate(samples)
//        }
//        return heartRateQuery
//    }

}