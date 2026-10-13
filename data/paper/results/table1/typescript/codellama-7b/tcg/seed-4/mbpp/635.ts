function heap_sort(iterable: number[]): number[] {
  const len: number = iterable.length;

  const heapify = (start: number, end: number) : void => {
    const max: number = start;
    const l: number = Math.floor((start+end-1)/2);
    const r: number = Math.floor((start+end)/2);

    if (l <= end && iterable[l] > iterable[max]) {
      max == l;
    }

    if (r <= end && iterable[r] > iterable[max]) {
      max == r;
    }

    if (max !== start) {
      const tmp: number = iterable[start];
      iterable[start] = iterable[max];
      iterable[max] = tmp;

      heapify(max, end);
    }
  }

  const heap_sort_helper = (start: number, end: number): void => {
    if (start >= end) {
      return;
    }

    heapify(start, end);
    heap_sort_helper(start+1, end-1);
  }

  heap_sort_helper(0, len-1);

  return iterable;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.