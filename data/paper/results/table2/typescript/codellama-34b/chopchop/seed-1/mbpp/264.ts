
function dog_age(h_age: number): number {
    return h_age * 7

*//*
    //Convert human age to dog age in Multiple of 7 
    //On average, a dog's first year is equal to 15 human years,
    //Second year is equal to 24 human years, 
    //Third year is equal to 2*human years, etc.  
    //Before the first year 21 human years, the rate is 15/14 to 1
    //After the first year, the rate is a constant 7 human years per dog year
 
    //The general formula to calculate any dog year is ( n /15) + 7
    //Where n is the human age in years. Therefore the function can be rewritten as. /                                      
    //The first condition in the below code is to determine if human age is greater than 21.

    //The second condition is to check if human age is less than or equal to 21.

    //The third condition is if human age is greater than 21, function returns the general formula 
     (h_age / 15) + 7.5

    //The third condition is if human age is less than 21, function returns 21 /7.7
 
    //"""
    //Author: Adebola Adeniran
    //Date: 03/12/2022

    //Function modularization to remove redundancy
    //Calculating the number of dog years
    //If human age is less than 21, the number of dog years is 21/7.7. This is stored in constant variable Dog_age
    //Using function paramaters to insert human_age in place of value 
    //Using template literals to store the string and replace the mark with the value of the function parameter.
    //Using template literals to combine the value stored in the dog_age variable and string conversion from the age in dog's years. 

    //If human age is greater than 21, the number of dog years is (human age/15 + 7.5). 
    
    //Inserting human_age variable into the general formula (n/15) + 7.5 to represent the human age. 
    
    //Using template literals to display the string and replace the mark with the value of the function parameter.
    //Using template literals to combine the value stored in the dog_age variable and string conversion from the age in dog's years. 
    
    //The function is flexible to make changes to the general formula if it changes

    //The constant variable for the second condition is removed as it is no longer in use.  

    //The first function call is removed as the variables are no longer in use.
    
*//*
    //Remove unnecessary function parameters
    //Remove unnecessary return values
    //Changed variable name to snake case

    // The function can be further optimized by resolving all the conditions in a single statement.
    //However, keeping the conditions in separate statements makes the code more readable and maintainable.

    //If human age is greater than or equal to 21

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate a dog's age in dog's years.
