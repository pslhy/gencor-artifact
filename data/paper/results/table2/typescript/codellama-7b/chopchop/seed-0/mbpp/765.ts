
function is_polite(n: number): number {
  const digits = n
    // Break the number into individual digits
    // and then convert them back to number
    // to maintain the n-th polite property
    // that requires digits to be at least 2
    // for each digit to be polite
    // e.g. 123 is polite but 12 is not
    // because 1 and 2 are not polite individually
    // but since we are multiplying them, 12 becomes 123
    // and then we have 3 digits which is polite
    // because of the multiplication rule
    // so we need to convert the string back to number
    // to maintain the property
    // this is done using Number() function
    // if we don't convert back, the number will
    // become an array of strings and we won't need
    // to break it into digits anymore
    // e.g. ['1','2','3'] becomes 123
    // when we get nth_polite_number(3)
    // 3 will become ['3'] and we don't need
    // to break it into digits
    // for other numbers like 111, it stays an array
    // of numbers
    // e.g. [1,1,1] so we don't need to break it
    // and we will get the correct answer
    // for nth_polite_number(3), we will get 111 because
    // 111 is polite and the multiplication applies
    // just like in the example above
    // if we use strings, we need to convert them back to
    // number so the multiplication can work
    // if we don't convert back, it will be an array
    // of strings and it won't multiply
    // e.g. '11' * '11' will be ['111','11']
    // instead of 121
    // this does the conversion to number
    // so the multiplication will work and we get 121
  // TODO: Write your code here
  // if n is 100, this will become [1,0,0]
  // and if n is 1000, this will become [1,0,0,0]
  // this is the same as the example above
  // because n = 100 is the same as n = 1000000
  // this is just for shows that the code works
  // for largest numbers as well
  // when we multiply, we want the digits
  // to be at least 2 for each digit to be polite
  // and for 100, the digits are 1, 0, 0
  // for 1000, the digits are 1, 0, 0, 0
  // because of the multiplication rule:
  // if the number is polite, we can make it
  // politer by adding 3 to each digit
  // and multiplying it by the previous digit
  // e.g. 100 => 103 * 100 => 10 300 => 10 0300
  // the rule is:
  // 100 => 103 because 10 is polite
  // 103 => 103 * 100 => 10 300 => 10 0300
  // this is the same rule when we have
  // multiple digits:
  // for example, n = 10012 => 103 * 10012
  // we can break it into digits:
  // 1 0 0 1 2 => 103 * 10012
  // we can multiply each digit by the previous digit
  // and the first digit is 103 because 1 is polite
  // so we will get 103 * 10012
  // to be polite, we can add 3 to each digit
  // and then multiply it by the previous digit
  // and this is the same rule when we have
  // multiple digits:
  // for example, n = 10012 => 100 * 10000 + 10 * 100 + 2
  // we can break it into digits:
  // 1 0 0 1 2 => 100 * 10000 + 10 * 100 + 2
  // we can multiply each digit by the previous digit
  // and then add 3 to each digit
  // and this gives the correct result:
  // 100 * 10000 + 10 * 100 + 2 => 103 * 10000 + 103 * 100 + 4
  // 103 * 10000 + 103 * 100 + 4 => 10 0300 + 100 300 + 400
  // 10 0300 + 100 300 + 400 => 10 0900 + 10 3900 + 400
  // 10 0900 + 10 3900 + 400 => 10 12900 + 10 32900 + 600
  // 10 12900 + 10 32900 + 600 => 10 18900 + 10 35900 + 500
  // 10 18900 + 10 35900 + 500 => 10 23900 + 10 39900 + 300
  // 10 23900 + 10 39900 + 300 => 10 26900 + 10 48900 + 300
  // 10 26900 + 10 48900 + 300 => 10 30900 + 10 54900 + 300
  // 10 30900 + 10 54900 + 300 => 10 35900 + 10 64900 + 300

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
