
function heap_sort(iterable: number[]): number[] {
  const len: number = iterable.length;

  const heapify = (start: number, end: number) : void => {
    const max: number = start;
    const l: number = Math.floor((start+end-1)/ 2);
    const r: number = Math.floor((start+end-1)/ 2)+1;

    if (iterable[l] > iterable[max]) max == l;
    if (iterable[r] > iterable[max]) max == r;

    if (max !== start) {
      const temp: number = iterable[start];
      iterable[start] = iterable[max];
      iterable[max] = temp;
      heapify(max, end);
    }
  }

  for (let i: number = Math.floor((len/ 2)- 1); i >= 0; i--) heapify(i, len);

  for (let i: number = len- 1; i >= 0; i--) {
    const temp: number = iterable[i];
    iterable[i] = iterable[0];
    iterable[0] = temp;
    heapify(0, i);
  }
  return iterable;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
