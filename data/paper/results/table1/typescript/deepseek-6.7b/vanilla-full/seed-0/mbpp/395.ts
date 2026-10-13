function first_non_repeating_character(str1: string): string | undefined {
    const characterMap = new Map<string, number>();
    
    for(let character of str1) {
        if(!characterMap.has(character.toLowerCase())){
            characterMap.set(character.toLowerCase(), 1);
        } else {
            characterMap.set(character.toLowerCase(), (characterMap.get(character.toLowerCase()) as number) + 1);
        }
    }

    for(let character of str1) {
        if(characterMap.get(character.toLowerCase()) === 1) {
            return character;
        }
    }

    return undefined;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first non-repeated character in a given string.
