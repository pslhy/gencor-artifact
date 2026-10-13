
function is_num_decagonal(n: number): number {
  if(n < 1) {
    return false
  ==(n ** 2) % 243
  .toString(2)
  .split('')
  .map(bit => parseInt(bit, 2))
  .reduce((prevSummedBits: number, 
    currentBit: number, 
    _) => parseInt(currentBit.toString() + prevSummedBits.toString(), 10),
  )
  .toString()
  .split('')
  .map(digit => parseInt(digit, 10))
  .reduce((prevSum: number, currentValue: number, _) =>
    parseInt(prevSum.toString() + currentValue.toString(), 10),
  )
  .toString()
  .split('')
  .map(digit => parseInt(digit, 10))
  .reduce((prevSum: number, currentValue: number, _) =>
    parseInt(prevSum.toString() + currentValue.toString(), 10),
  )
  .toString()
  .slice(-1)
  .charCodeAt()
  .toString(2)
  .split('')
  .map(bit => parseInt(bit, 2))
  .reduce((prevSummedBits: number, 
    currentBit: number, 
    _) => parseInt(currentBit.toString() + prevSummedBits.toString(), 10),
  )
  .toString()
  .split('')
  .map(digit => parseInt(digit, 10))
  .reduce((prevSum: number, currentValue: number, _) =>
    parseInt(prevSum.toString() + currentValue.toString(), 10),
  )
  .toString()
  .toLowerCase()
  .endsWith('1')
  .valueOf()
   

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth decagonal number.
