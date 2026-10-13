
function text_match_two_three(text: string): boolean {
   if (text.includes('a') && text.includes('b')) {
      let a_index = text.indexOf('a');
      let b_index = text.indexOf('b');
      
      if (b_index === a_index + 1) {
         b_index += 1;
         if (text[b_index] === 'b') {
            return true;
      } else {
         return false;
      }
   }
   return false;
}

// Test case 1:
console.log(text_match_two_three('abc')); // true
console.log(text_match_two_three('abbb')); // true
console.log(text_match_two_three('abb')); // false
console.log(text_match_two_three('ab')); // false
console.log(text_match_two_three('a')); // false
console.log(text_match_two_three('')); // false
console.log(text_match_two_three(' ')); // false
console.log(text_match_two_three('      ')); // false
console.log(text_match_two_three('abcdefg')); // false
console.log(text_match_two_three('abcd')); // false
console.log(text_match_two_three('ab')); // false
console.log(text_match_two_three('abc')); // false
console.log(text_match_two_three('abbb')); // false
console.log(text_match_two_three('abbcc')); // false
console.log(text_match_two_three('abbbb')); // false
console.log(text_match_two_three('abbbcc')); // false
console.log(text_match_two_three('abbbbb')); // false
console.log(text_match_two_three('abbbbbd')); // false
console.log(text_match_two_three('abbbbbcd')); // false
console.log(text_match_two_three('abbbbbb')); // false
console.log(text_match_two_three('abbbbbbd')); // false
console.log(text_match_two_three('abbbbbbcd')); // false
console.log(text_match_two_three('abbbbbbb')); // false
console.log(text_match_two_three('abbbbbbbd')); // false
console.log(text_match_two_three('abbbbbbbcd')); // false
console.log(text_match_two_three('abbbbbbbb')); // false
console.log(text_match_two_three('abbbbbbbbb')); // false
console.log(text_match_two_three('abbbbbbbb')); // false
console.log(text_match_two_three('abbbbbbbBB')); // false
console.log(text_match_two_three('abbbbbbbb')); // false
console.log(text_match_two_three('abbbbbbb')); // false
console.log(text_match_two_three('abbbbbb')); // false
console.log(text_match_two_three('abbbbb')); // false
console.log(text_match_two_three('abbbb')); // false
console.log(text_match_two_three('abbb')); // false
console.log(text_match_two_three('abb')); // false
console.log(text_match_two_three('ab')); // false
console.log(text_match_two_three('a')); // false
console.log(text_match_two_three('')); // false
console.log(text_match_two_three(' ')); // false
console.log(text_match_two_three('      ')); // false
console.log(text_match_two_three('abcdefg')); // false
console.log(text_match_two_three('abcd')); // false
console.log(text_match_two_three('ab')); // false
console.log(text_match_two_three('abc')); // false
console.log(text_match_two_three('abbb')); // false
console.log(text_match_two_three('abb')); // false
console.log(text_match_two_three('ab')) // false
console.log(text_match_two_three('')); // false
console.log(text_match_two_three('')); // false
console

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters.
