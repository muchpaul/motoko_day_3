import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Char "mo:base/Char";
actor {
  
  // default function
  public func greet(name : Text) : async Text {
    return "Hello, " # name # "!";
  };


  // didn't have time to complete all the challenges today, sorry
  

  // Challenge 1 : Write a private function swap that takes 3 parameters : a mutable array , an index j and an index i and returns the same array but where value at index i and index j have been swapped.

  /* doesn't compile - don't have time to fix sorry
  private func _swap(array : [Nat], i : Nat, j : Nat) : [Nat] {
    // Transform our immutable array into a mutable one so we can modify values.
    let array_mutable = Array.thaw<Nat>(array);
    let tmp = array[i];
    array[i] := array[j];
    array[j] := tmp;
    // Transform our mutable array into an immutable array.
    return(Array.freeze<Nat>(array));
  };

  public func selection_sort(array : [Nat]) : async [Nat] {
    var sorted = array;
    let size = array.size();
    // First loop
    for(i in Iter.range(0, size - 1)){
      var index_minimum = i;
      // Second loop to determine the minimum in the sub array
      for(j in Iter.range(i, size - 1)){
        if(sorted[j] < sorted[index_minimum]){
          index_minimum := j;
        };
      };
    sorted := _swap(sorted, index_minimum, i);
    };  
    return(sorted);
  };
  */

  /* Seb's answer from day_1 challenge 10
    private func _swap(array : [Nat], i : Nat, j : Nat) : [Nat] {
    // Transform our immutable array into a mutable one so we can modify values.
    let array_mutable = Array.thaw<Nat>(array);
    let tmp = array[i];
    array[i] := array[j];
    array[j] := tmp;
    // Transform our mutable array into an immutable array.
    return(Array.freeze<Nat>(array));
  };

  public func selection_sort(array : [Nat]) : async [Nat] {
    var sorted = array;
    let size = array.size();
    // First loop
    for(i in Iter.range(0, size - 1)){
      var index_minimum = i;
      // Second loop to determine the minimum in the sub array
      for(j in Iter.range(i, size - 1)){
        if(sorted[j] < sorted[index_minimum]){
          index_minimum := j;
        };
      };
    sorted := _swap(sorted, index_minimum, i);
    };  
    return(sorted);
  };

  // Note : This _swap function that swap index i and j of a mutable array is not something I would recommend. If you are defining an array as immutable you shouldn't touch the values inside after the declaration.
  // Also Motoko has a sort function in the Array library. Challenge 10 was mostly for educational purposes around sorting algorithm.
  */


  // Challenge 2 : Write a function init_count that takes a Nat n and returns an array [Nat] where value is equal to it's corresponding index.
  // Note : init_count(5) -> [0,1,2,3,4].
  // Note 2 : Do not use Array.append.

  // Challenge 3 : Write a function seven that takes an array [Nat] and returns "Seven is found" if one digit of ANY number is 8. Otherwise this function will return "Seven not found".

  // Challenge 4 : Write a function nat_opt_to_nat that takes two parameters : n of type ?Nat and m of type Nat . This function will return the value of n if n is not null and if n is null it will default to the value of m.

  // Challenge 5 : Write a function day_of_the_week that takes a Nat n and returns a Text value corresponding to the day. If n doesn't correspond to any day it will return null .
  // day_of_the_week (1) -> "Monday".
  // day_of_the_week (7) -> "Sunday".
  // day_of_the_week (12) -> null.

  // Challenge 6 : Write a function populate_array that takes an array [?Nat] and returns an array [Nat] where all null values have been replaced by 0.
  // Note : Do not use a loop.

  // Challenge 7 : Write a function sum_of_array that takes an array [Nat] and returns the sum of a values in the array.
  // Note : Do not use a loop.

  // Challenge 8 : Write a function squared_array that takes an array [Nat] and returns a new array where each value has been squared.
  // Note : Do not use a loop.

  // Challenge 9 : Write a function increase_by_index that takes an array [Nat] and returns a new array where each number has been increased by it's corresponding index.
  // Note : increase_by_index [1, 4, 8, 0] -> [1 + 0, 4 + 1 , 8 + 2 , 0 + 3] = [1,5,10,3]
  // Note : Do not use a loop.

  // Challenge 10 : Write a higher order function contains<A> that takes 3 parameters : an array [A] , a of type A and a function f that takes a tuple of type (A,A) and returns a boolean.
  // This function should return a boolean indicating whether or not a is present in the array.

};
