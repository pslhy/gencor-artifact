function toggle_string(string: string): string {
    let newString = "";
    for (let i = 0; i < string.length; i++) {
        let charCode = string.charCodeAt(i);
        if (charCode >= 65 && charCode <= 90) { //uppercase
            newString += string[i].toLowerCase();
        } else if (charCode >= 97 && charCode <= 122) { //lowercase
            newString += string[i].toUpperCase();
        } else {
            newString += string[i];
        }
    }
    return newString;
}

console.log(toggle_string("Hello World")); //should print "hELLO wORLD"
console.log(toggle_string("Python Is FUN.")); //should print "pYTHON iS fun."


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to toggle the case of all characters in a string.
