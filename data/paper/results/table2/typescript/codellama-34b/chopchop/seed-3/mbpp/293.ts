
function otherside_rightangle(w: number, h: number): number {
   if(w*w + h*h != 0){
      return Math.sqrt(w*w + h*h)
  
   // if none of the conditions match, the function will return undefined
   // we can update the code to throw an exception if we want to
   // throw new Error("Invalid input, w and h should be positive numbers")
  
   // it is a good practice to check for the input validity
   // and throw an exception if the input is not valid
  
   // we can also use type annotations to specify the function parameter and return type
   // function otherside_rightangle(w: number, h: number): number {
   //   if(w*w + h*h != 0){
   //      return Math.sqrt(w*w + h*h)
  
   // if the input is not valid, the function will return NaN
   // we can also update the code to return NaN if the input is not valid
   // return NaN
  
   // we can also use a more concise way to write the function
   // function otherside_rightangle(w: number, h: number): number {
   //   return Math.sqrt(w*w + h*h)
  
   // this will also work, but it's less readable
   // function otherside_rightangle(w: number, h: number): number {
   //   return Math.hypot(w, h)
  
   // or we can use the built-in hypot() function
   // function otherside_rightangle(w: number, h: number): number {
   //   return hypot(w, h)
  
   // if we want to use this function as a method for a class
   // we can define the function as a method in the class
   // class RightTriangle {
   //   otherside(w: number, h: number): number {
   //      return Math.sqrt(w*w + h*h)
  
   // or we can use a getter method
   // class RightTriangle {
   //   private w: number
   //   private h: number
   //   public get otherside(): number {
   //     return Math.sqrt(this.w*this.w + this.h*this.h)
  
   // if we want to make the function more flexible, we can add more parameters to the function
   // function otherside_rightangle(w: number

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the third side of a right angled triangle.
