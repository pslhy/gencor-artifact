function concatenate_tuple(test_tup: [string, string, number, string]): string {
  let result = "";
  for (let [str1, str2] of test_tup[0][0].match(test_tup[0][1].match(test_tup[0][2].match(test_tup[0][3].match(test_tup[1].match(test_tup[2].
      toString().slice(1).replace(/([^,  ]+ November\d+, 19[\d)])/g, '- }).replace(/([^,  ]+ January\d+, 1[\d)\W]/g, ') 
      .replace(/([^,  ]+ February\d+, 19[\d)\W]/g, '-').replace(/([^,  ]+ February\d+, 1[\d)\W]/g, ')' ) 
      .replace(/([^,  ]+ March\d+, 19[\d)\W]/g, '-').replace(/([^,  ]+ March\d+, 1[\d)\W]/g, ')' ) 
      .replace(/([^,  ]+ April\d+, 19[\d)\W]/g, '-').replace(/([^,  ]+ April\d+, 1[\d)\W]/g, ')' ) 
      .replace(/([^,  ]+ May\d+, 19[\d)\W]/g, '-').replace(/([^,  ]+ May\d+, 1[\d)\W]/g, ')' ) 
      .replace(/([^,  ]+ June\d+, 19[\d)\W]/g, '-').replace(/([^,  ]+ June\d+, 1[\d)\W]/g, ')' ) 
      .replace(/([^,  ]+ July\d+, 19[\d)\W]/g, '-').replace(/([^,  ]+ July\d+, 1[\d)\W]/g, ')' ) 
      .replace(/([^,  ]+ August\d+, 19[\d)\W]/g, '-').replace(/([^,  ]+ August\d+, 1[\d)\W]/g, ')' )
      .replace(/([^,  ]+ September\d+, 19[\d)\W]/g, '-').replace(/([^,  ]+ September\d+, 1[\d)\W]/g, ')' ) 
      .replace(/([^,  ]+ October\d+, 19[\d)\W]/g, '-').replace(/([^,  ]+ October\d+, 1[\d)\W]/g, ')' ) 
      .replace(/([^,  ]+ November\d+, 19[\d)\W]/g, '-').replace(/([^,  ]+ November\d+, 1[\d)\W]/g, ')' ) 
      .replace(/([^,  ]+ December\d+, 19[\d)\W]/g, '-').replace(/([^,  ]+ December\d+, 1[\d)\W]/g, ')' )


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to concatenate each element of array by the delimiter.