function count_no_of_ways(n: number, k: number): number {
    if(n === 0) return 0;
    if(n === 1) return k;
  
    let same_color_count = k; // if the n posts have same color
    let diff_color_count = k * (k - 1); // if the n posts have different color
  
    for(let i = 2; i < n; i++) {
        let temp = diff_color_count;
        // When the new post has same color as previous one, we have k - 1 options for the colors
        // and the same_color_count would be updated with this possibility
        same_color_count = diff_color_count;
        // When the new post has different color as previous one, we have k * (k - 1) options for the colors
        // and the diff_color_count would be updated with this possibility
        diff_color_count = (temp + (same_color_count * (k - 1))) % (1e9 + 7);
    }
  
    return (same_color_count + diff_color_count) % (1e9 + 7);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
