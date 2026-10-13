
function closest_integer(value: string): number {
   const num: number = parseInt(value);
   if (value.includes(".")) {
      const fractionalPart: number = Math.abs(num - parseInt(num.toString()));
      if (fractionalPart < 0.5) {
         return num;
      } else if (fractionalPart > 0.5) {
         return num + (num > 0 ? 1 : -1);
      } else {
         return num + (num > 0 ? 1 : -1);
      }
   } else {
      return num;
   }
}

const closestInteger = closest_integer("15.3");
console.log(closestInteger);

const closestInteger2 = closest_integer("-15.5");
console.log(closestInteger2);

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Create a function that takes a value (string) representing a number
//     and returns the closest integer to it. If the number is equidistant
//     from two integers, round it away from zero.
//     Examples
//     >>> closest_integer("10")
//     10
//     >>> closest_integer("15.3")
//     15
//     Note:
//     Rounding away from zero means that if the given number is equidistant
//     from two integers, the one you should return is the one that is the
//     farthest from zero. For example closest_integer("14.5") should
//     return 15 and closest_integer("-14.5") should return -15.
