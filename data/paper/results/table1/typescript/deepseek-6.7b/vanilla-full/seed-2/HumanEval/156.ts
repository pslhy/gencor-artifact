function int_to_mini_roman(number: number): string {
    const symbol = ["i", "v", "x", "l", "c", "d", "m"],
          value = [1, 5, 10, 50, 100, 500, 1000],
          roman = [];
    
    for(let i=6; i>=0; i-=2){
        let j = Math.floor(number/value[i]);
        number %= value[i];
        if(j===4){
            roman.push(symbol[i], symbol[i-1]);
        }else if(j===9){
            roman.push(symbol[i], symbol[i+2]);
        }else{
            if(j>4){
              roman.push(symbol[i-1]);
              j -= 5;
            }
            while(j-- > 0) roman.push(symbol[i]);
        }
    }
    return roman.join("");
}

console.log(int_to_mini_roman(19)); // "xix"
console.log(int_to_mini_roman(152)); // "clii"
console.log(int_to_mini_roman(426)); // "cdxxvi"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a positive integer, obtain its roman numeral equivalent as a string,
//     and return it in lowercase.
//     Restrictions: 1 <= num <= 1000
//     Examples:
//     >>> int_to_mini_roman(19)
//     "xix"
//     >>> int_to_mini_roman(152)
//     "clii"
//     >>> int_to_mini_roman(426)
//     "cdxxvi"
