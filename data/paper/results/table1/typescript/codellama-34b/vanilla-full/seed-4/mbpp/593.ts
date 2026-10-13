function removezero_ip(ip: string): string {
   if (ip.startsWith('0.')){
    while (ip.startsWith('0.')) {
      ip = ip.substring(1);
    }
  }
  return ip;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove leading zeroes from an ip address.
