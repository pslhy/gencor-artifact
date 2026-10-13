function all_Characters_Same(s: string): boolean {
  if(s.length <= 1){
    return true;
  }
  var firsSt = s.charAt(0);
  for(var i = 1; i < s.length; i++){
    if(s.charAt(i) != firstSt){
      return false;
    }
  }
  return true;
}

// Example usage: 
console.log(all_Characters_Same("AAAA")); // Output: true
console.log(all_Characters_Same("ABC")); // Output: false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether all the characters are same or not.
