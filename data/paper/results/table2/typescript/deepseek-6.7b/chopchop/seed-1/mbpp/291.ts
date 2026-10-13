
function count_no_of_ways(n: number, k: number): number {
    if(n === 0) return 0;
    if(n === 1) return k;
  
    let same_color_count = k; // if the n posts have same color
    let diff_color_count = k * (k - 1); // if the n posts have different color
  
    for(let i = 2; i < n; i++) {
        let temp = diff_color_count;
        // When the new post has same color as previous one, we have k - 1 options to choose from
        // and the remaining n - 2 posts can be painted in diff_color_count ways
        same_color_count = diff_color_count;  
        // When the new post has different color, we have k * (k - 1) ways to paint the nth post
        // and the remaining n - 1 posts can be painted in diff_color_count ways
        diff_color_count = (k - 1) * (same_color_count + temp);
    }
  
    return same_color_count + diff_color_count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
