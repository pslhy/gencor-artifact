function heap_sort(iterable: number[]): number[] {
  const len: number = iterable.length;

  const heapify = (start: number, end: number) : void => {
    const max: number = start;
    const l: number = Math.floor((start+end-1)/2);
    const r: number = Math.floor((start+end)/2);

    if (l <= end && iterable[l] > iterable[max]) {
      max = l;
    }
    if (r <= end && iterable[r] > iterable[max]) {
      max = r;
    }

    if (max !== start) {
      const temp: number = iterable[start];
      iterable[start] = iterable[max];
      iterable[max] = temp;
      heapify(max, end);
    }
  }

  const sort = (start: number, end: number): void => {
    if (start < end) {
      const mid = Math.floor((start + end) / 2);
      sort(start, mid);
      sort(mid+1, end);
      const length = end - start + 1;
      for (let i = 0; i < length; i++) {
        const temp = iterable[i + start];
        iterable[i + start] = iterable[length - i - 1];
        iterable[length - i - 1] = temp;
      }
      heapify(start, end);
    }
  }

  sort(0, len-1);

  return iterable;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
