function is_samepatterns(colors: string[], patterns: string[]): boolean { 
  if (colors.length !== patterns.length) return false; 

  const colorMap = new Map<string, string>();
  const patternSet = new Set<string>();

  for (let i = 0; i < colors.length; i++) {
    const color = colors[i];
    const pattern = patterns[i];

    if (colorMap.has(color)) {
      if (colorMap.get(color) !== pattern) return false;
    } else {
      if (patternSet.has(pattern)) return false;
      colorMap.set(color, pattern);
      patternSet.add(pattern);
    }
  }

  return true; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether it follows the sequence given in the patterns array.
