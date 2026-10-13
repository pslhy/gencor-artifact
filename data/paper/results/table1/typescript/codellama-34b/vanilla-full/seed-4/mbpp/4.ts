function heap_queue_largest(nums: number[], n: number): number[] {
   if (nums.length === 0 || n === 0) {
      return [];
   }
   const queue = [];
   for (const num of nums) {
      if (queue.length < n) {
         queue.push(num);
      } else if (num > queue[0]) {
         queue[0] = num;
      }
      sift_down(queue, 0);
   }
   return queue;
}

function sift_down(queue: number[], i: number) {
   const last = queue.length - 1;
   while (i < last) {
      const left = 2 * i + 1;
      const right = 2 * i + 2;
      const largest =
         right < last && queue[right] > queue[left] ? right : left;
      if (queue[largest] > queue[i]) {
         [queue[i], queue[largest]] = [queue[largest], queue[i]];
         i = largest;
      } else {
         break;
      }
   }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n largest integers from a given array of numbers, returned in descending order.
