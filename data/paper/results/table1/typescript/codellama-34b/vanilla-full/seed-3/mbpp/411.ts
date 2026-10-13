function snake_to_camel(word: string): string {
  if(word.includes('_')){
    while (word.includes('_')){
      let index = word.indexOf('_');
      let newString = word.slice(0, index) + word[index+1].toUppercase() + word.slice(index+2)
      word = newString;
    }
    return word;
  }
  else{
    return word;
  }
}
*/

//tests
console.log(snake_to_camel('hello_world')); // Output: 'HelloWorld'
console.log(snake_to_camel('hello_world_foo_bar')); // Output: 'HelloWorldFooBar'
console.log(snake_to_camel('hello_world_foo_bar_baz')); // Output: 'HelloWorldFooBarBaz'


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert the given snake case string to camel case string.
