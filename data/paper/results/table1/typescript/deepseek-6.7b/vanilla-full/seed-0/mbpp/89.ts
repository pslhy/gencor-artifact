function closest_num(N: number): number {
    let num = N.toString().split('').map(Number).reverse(); 
    for(let i=1; i<num.length; i++) {
        if (num[i]>num[i-1]) {
            num[i] -= 1;
            for (let j = i+1; j<num.length; j++) {
                num[j] = 9;
            }
            for (let k = i; k > 0 ; k--) {
                if(num[k] < 0 && k > 0) {
                    num[k] = 9;
                    num[k-1] -= 1;
                }
            }
            if (num[0] > 0) {return parseInt(num.reverse().join(''), 10);}
            if (num[0] == 0) {
                let pos = num.findIndex(n => n>0);
                if (pos != -1) {
                    num[num.findIndex(n => n > num[pos]-1)] -= 1;
                    num = num.map(n => n == 0 ? 9 : n);
                    for (let l=1; l<=pos; l++) {
                        num[num.length - l] = 9;
                    }
                }
            }
        }
        if (num.every(n => n == 0)){return 0;}
    }
    return parseInt(num.reverse().join(''), 10);
}

console.log(closest_num(2847));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the closest smaller number than n.
