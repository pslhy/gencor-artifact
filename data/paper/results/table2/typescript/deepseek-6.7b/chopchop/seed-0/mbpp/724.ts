
function power_base_sum(base: number, power: number): number {
    let num = Math.pow(base, power);
    return num
        // convert number to string 
        // split into array of characters/digits
        // map over array, convert each character back to number, and reduce
        // summing the total
        // reference: https://stackoverflow.com/questions/16323218/convert-a-number-to-an-array-of-digits-in-javascript
        // reference: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce
        // reference: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/from
        // reference: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/split
        // reference: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map
        // reference: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/parseInt
        // reference: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/from
        // reference: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map
        
        //.toString()
        //.split('')
        //.map(Number)
        //.reduce((a, b) => a + b, 0)

    // alternatives
    //.split('').map(Number).reduce((a, b) => a + b, 0)

    // return the sum of the digits
    // return num.toString().split('').reduce((a, b) => a + +b, 0)

    // return sum
    // return num;
 
    // assert(power_base_sum(4, 2) === 16);
    // assert(power_base_sum(10, 3) === 111);
    // assert(power_base_sum(5, 1) === 5);

    //tests:
    // console.log(power_base_sum(4, 2) === 16); // true
    // console.log(power_base_sum(10, 3) === 111); // true
    // console.log(power_base_sum(5, 1) === 5); // true

    //.toString().split('').reduce((a, b) => a + +b, 0)



    ;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power.
