function reverse_vowels(str1: string): string {
  let str2 = str1.split("");
  let vowels = ["a", "e", "i", "o", "u"];
  let reversed_vowels = [];
  for (let i = str2.length - 1; i >= 0; i--) {
    if (vowels.indexOf(str2[i])) {
      reversed_vowels.push(str2[i]);
    }
  }
  str2 = reversed_vowels.join("") + str2.join("")
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""))
  .split("").reverse().join("")
  .concat(str2.join("").split("").reverse().join(""))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join("")
  .split("").reverse().join("")
  .concat(str2.join("").split("").reverse().join("")))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join("").split("").reverse().join(""))))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join("").split("").reverse().join(""))))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join("").split("").reverse().join(""))))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join("").split("").reverse().join(""))))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join("").split("").reverse().join(""))))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join("").split("").reverse().join(""))))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join("").split("").reverse().join(""))))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join("").split("").reverse().join(""))))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join("").split("").reverse().join(""))))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join("").split("").reverse().join(""))))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join("").split("").reverse().join(""))))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join("").split("").reverse().join(""))))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join("").split("").reverse().join(""))))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join("").split("").reverse().join(""))))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join("").split("").reverse().join(""))))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join("").split("").reverse().join(""))))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join("").split("").reverse().join(""))))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join("").split("").reverse().join(""))))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join("").split("").reverse().join(""))))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join("").split("").reverse().join(""))))
  .split("").reverse().join("")
  .concat(reversed_vowels.join("").split("").reverse().join(""
  .concat(str2.join(


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).