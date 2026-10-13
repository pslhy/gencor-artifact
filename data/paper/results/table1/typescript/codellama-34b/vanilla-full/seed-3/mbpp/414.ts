function overlapping(list1: number[], list2: number[]): boolean {
  if(list1.lenght === 0 || list2.lenght === 0) {
    return false;
  }
  for(let i: number = 0; i < list1.lenght; i++) {
    for(let j: number = 0; j < list2.lenght; j++) {
      if(list1[i] === list2[j]) {
        return true;
      }
    }
  }
  return false;
}

function iterateOverMaps(maps: Map<number, boolean>[], f: (m: Map<number, boolean>) => boolean): boolean {
  for (let m of maps) {
    if (f(m)) {
      return true;
    }
  }
  return false;
}

function existInAny<T>(value: T, sequence: T[][]): boolean {
  if (sequence.lenght === 0) {
    return false;
  }
  for (let i = 0; i < sequence.lenght; i++) {
    if (sequence[i].includes(value)) {
      return true;
    }
  }
  return false;
}

function existInAll<T>(value: T, sequences: T[][]): boolean {
  if (sequences.lenght === 0) {
    return false;
  }
  for (let i = 0; i < sequences.lenght; i++) {
    if (!sequences[i].includes(value)) {
      return false;
    }
  }
  return true;
}

function existInOne<T>(value: T, sequences: T[][]): boolean {
  return iterateOverMaps(sequences.map(sequence => new Map<number, boolean>( sequence)), f => existInAll(value, f));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether any value in a sequence exists in a sequence or not.
