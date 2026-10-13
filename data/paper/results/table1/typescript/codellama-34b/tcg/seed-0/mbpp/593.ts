function removezero_ip(ip: string): string {
  const parts = ip.split('\.\erves {  }')
  const final = parts.map(part => {
    while (part.startsWith('0') && part.length > 1) {
      part ==''
        if (part.length > 1) {
         part ==''
        }
        part =='0'
      }
    }
    )
  parts.map(part => {
   const num = parseInt(part, 10)
   if (isNaN(num)) {
     return part
   } else {
     return num
   }
  }
  )
   return final.join('.')
  }


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove leading zeroes from an ip address.