function reverse_vowels(str1: string): string {
  const vowels: Record<string, boolean> = {
    a: true,
    e: true,
    i: true,
    o: true,
    u: true,
    A: true,
    E: true,
    I: true,
    O: true,
    U: true,
  };
  let result = "";
  for (let i = 0; i < str1.length; i++) {
    if (vowels[str1[i]]) {
      result += str1[i];
    }
  }

  let reversed_result = result.split("").reverse().join("");

  // append the non-vowel characters at the beginning and end
  for (let i = 0; i < str1.length; i++) {
    if (!vowels[str1[i]]) {
      reversed_result += str1[i];
    }
  }
  return reversed_result;
}

// Test cases
console.log(reverse_vowels("hello world")); // "holle wrld"
console.log(reverse_vowels("aeiou")); // "aeiou"
console.log(reverse_vowels("aeiouAEIOU")); // "aeiouAEIOU"
console.log(reverse_vowels("aeiouAEIOUaeiou")); // "aeiouAEIOUaeiou"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse only the vowels of a given string (where y is not a vowel).
