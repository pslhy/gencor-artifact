
function is_woodall(x: number): boolean {
  const digits = x
    // get individual digits
    //  convert to Set to remove duplicates
    //  sort for comparison
    //  convert to Array for slicing
    // log_2(10) ~= 3.3223
    // log_2(8)  = 3.log_2(8)
    // log_2(5)  = 2.8905
    // log_2(3)  = 1.5849
    // log_2(2)  = 1
    // log_2(1)  = 0
    // log_2(0)  = NaN
    // making sure that we take ceiling of all values so that
    // if they were rounded down, they will be considered more than one digit
    // the number needs to have more than one digit
    // Additionally, to be a power of 2, the value must be an exact power of the base (2)
    // so we only need to check the last digit
    // if it is not a power of 2, it cannot be a woodall number
    // if it is a power of 2, check if the other digits are also powers of 2
    // example: 3223 is not a woodall number, but 3213 is
    // 3223: log_2 1000 = 10, log_2 223 = 8.4650, log_2(8.465) = 8
    // 3213: log_2 1000 = 10, log_2 213 = 8.1000, log_2(8.100) = 8
    // log_2 8 = 3.log_2 2
    // the last digit, 3, is not a power of 2, it is not a woodball number
    // the other digits, 2, 1, 3, are all powers of 2, and hence it is a woodball number
    // the function needs to return true if any of the numbers have the same
    //  log_2(10) = 3.3223
    //  log_2(8)  = 3.2997
    //  log_2(5)  = 2.8905
    //  log_2(3)  = 1.5849
    //  log_2(2)  = 1
    //  log_2(1)  = 0
    //  log_2(0)  = NaN
    //  log_2(number)
    //  log_2(10) = 3.3223
    //  log_2(8)  = 3.2997
    //  log_2(5)  = 2.8905
    //  log_2(3)  = 1.5849
    //  log_2(2)  = 1
    //  log_2(1)  = 0
    //  log_2(0)  = NaN
    // taking the ceiling of all the values to make sure they are integers and not float
    // checking if any of the last digits is a power of 2
    //  if any of the values have the same log_2(10) = 3.3223, it is a woodball number
    // if it has a value other than 3, it is not a woodball number
    // if it has a value other than 2, it is not a woodball number
    // if it has a value other than 1, it is not a woodball number
    // if it has a value other than 0, it is not a woodball number
    // if none of the above conditions are met, it is not a woodball number
    //  note that, 0 is considered a woodball number
    //  if no last digit is found to be a power of 2, it is not a woodball number
    //  if all last digits are powers of 2, it is a woodball number
  //  return x.toString().split('').last().to_i === 2;
  //  note that, the above code is only checking for the base-2 representation of the number
  //  it is not checking the decimal representation of the number
  //  also, it is not checking if the number is a multiple of 10
  //  it is also not checking if the number is a multiple of 8
  //  it is also not checking if the number is a multiple of 5
  //  it is also not checking if the number is a multiple of 3
  //  it is also not checking if the number is a multiple of 2
  //  it is also not checking if the number is a multiple of 1
  //  it is also not checking if the number is a multiple of 0
  //  it is also checking if the number is a power of 2
    // is_power_of_2(9) // true
    // is_power_of_2(10) // true
    // is_power_of_2(11) // false
    // is_power_of_2(12) // false
    // is_power_of_2(13) // false
    // is_power_of_2(14) // false
    // is_power_of_2(15) // false
    // is_power_of_2(16) // true
    // is_power_of_2(17) // false
    // is_power_of_2(18) // false
    // is_power_of_2(19) // false
    // is_power_of_2(20) // true
    // is_power_of_2(21) // false
    // is_power_of_2(22) // false
    // is_power_of_2(23) // false
    // is_power_of_2(24) // true


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given number is woodball or not.
