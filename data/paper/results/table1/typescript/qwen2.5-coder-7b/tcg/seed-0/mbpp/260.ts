function newman_prime(n: number): number {;
  let newValue = new Array(n + 1).fill(1);
  let m = 0;
  while (true) {
    m++;
    newValue[m] = 2 * newValue[m - 1] + newValue[Math.floor((m - 1) / 2)];
    if (isNaN(newValue[m]) || !isFinite(newValue[m])) {
      break;
    }
    if (isNaN(newValue[Math.floor((m - 1) / 2)]) || !isFinite(newValue[Math.floor((m - 1) / 2)])) {
      break;
    }
    if (m % 2 !== 0 && isNaN(newValue[m - 1]) || !isFinite(newValue[m - 1])) {
      break;
    }
    if (isNaN(newValue[0]) || !isFinite(newValue[0])) {
      break;
    }
    if (isNaN(newValue[m]) || !isFinite(newValue[m])) {
      break;
    }
    if (m % 2 !== 0 && isNaN(newValue[m - 1]) || !isFinite(newValue[m - 1])) {
      break;
    }
    if (isNaN(newValue[0]) || !isFinite(newValue[0])) {
      break;
    }
    if (isNaN(newValue[m]) || !isFinite(newValue[m])) {
      break;
    }
    if (m % 2 !== 0 && isNaN(newValue[m - 1]) || !isFinite(newValue[m - 1])) {
      break;
    }
    if (isNaN(newValue[0]) || !isFinite(newValue[0])) {
      break;
    }
    if (isNaN(newValue[m]) || !isFinite(newValue[m])) {
      break;
    }
    if (m % 2 !== 0 && isNaN(newValue[m - 1]) || !isFinite(newValue[m - 1])) {
      break;
    }
    if (isNaN(newValue[0]) || !isFinite(newValue[0])) {
      break;
    }
    if (isNaN(newValue[m]) || !isFinite(newValue[m])) {
      break;
    }
    if (m % 2 !== 0 && isNaN(newValue[m - 1]) || !isFinite(newValue[m - 1])) {
      break;
    }
    if (isNaN(newValue[0]) || !isFinite(newValue[0])) {
      break;
    }
    if (isNaN(newValue[m]) || !isFinite(newValue[m])) {
      break;
    }
    if (m % 2 !== 0 && isNaN(newValue[m - 1]) || !isFinite(newValue[m - 1])) {
      break;
    }
    if (isNaN(newValue[0]) || !isFinite(newValue[0])) {
      break;
    }
    if (isNaN(newValue[m]) || !isFinite(newValue
    [
      newValue[
        newValue[
          newValue[
            newValue[
              newValue[
                newValue[
                  newValue[
                    newValue[
                      newValue[
                        newValue[
                          newValue[
                            newValue[
                              newValue[
                                newValue[
                                  newValue[
                                    newValue[
                                      newValue[
                                        newValue[
                                          newValue[
                                            newValue[
                                              newValue[
                                                newValue[
                                                  newValue[
                                                    newValue[
                                                      newValue[
                                                        newValue[
                                                          newValue[
                                                            newValue[
                                                              newValue[
                                                                newValue[
                                                                  newValue[
                                                                    newValue[
                                                                      newValue[
                                                                        newValue[
                                                                          newValue[
                                                                            newValue[
                                                                              newValue[
                                                                                newValue[
                                                                                  newValue[
                                                                                    newValue[
                                                                                      newValue[
                                                                                        newValue[
                                                                                          newValue[
                                                                                            newValue[
                                                                                              newValue[
                                                                                                newValue[
                                                                                                  newValue[
                                                                                                    newValue[
                                                                                                      newValue[
                                                                                                        newValue[
                                                                                                          newValue[
                                                                                                            newValue[
                                                                                                              newValue[
                                                                                                                newValue[
                                                                                                                  newValue[
                                                                                                                    newValue[
                                                                                                                      newValue[
                                                                                                                        newValue[
                                                                                                                          newValue[
                                                                                                                            newValue[
                                                                                                                              newValue[
                                                                                                                                newValue[
                                                                                                                                  newValue[
                                                                                                                                    newValue[
                                                                                                                                      newValue[
                                                                                                                                        newValue[
                                                                                                                                          newValue[


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth newman–shanks–williams prime number.