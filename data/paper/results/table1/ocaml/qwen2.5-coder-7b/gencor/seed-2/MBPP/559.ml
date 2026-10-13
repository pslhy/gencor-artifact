
let rec max_sub_array_sum (a : int list) (size : int) : int = 
    let rec max_crossing_sum (low : int) (mid : int) (high : int) : int = 
        let mutable_left_sum = Int.min_int in
        let mutable_sum = 0 in
        for i = mid downto low do
            mutable_sum <- mutable_sum + List.nth a i;
            if mutable_sum > mutable_left_sum then
                mutable_left_sum <- mutable_sum
        done;
        let mutable_right_sum = Int.min_int in
        mutable_sum <- 0;
        for j = mid + 1 to high do
            mutable_sum <- mutable_sum + List.nth a j;
            if mutable_sum > mutable_right_sum then
                mutable_right_sum <- mutable_sum
        done;
        mutable_left_sum + mutable_right_sum
    in
    let rec max_sub_array_helper (low : int) (high : int) : int = 
        if low = high then a.(low)
        else 
            let mid = (low + high) / 2 in
            let max_left_subarray_sum = max_sub_array_helper low mid in
            let max_right_subarray_sum = max_sub_array_helper (mid + 1) high in
            let max_crossing_subarray_sum = max_crossing_sum low mid high in
            max max_left_subarray_sum
                (max max_right_subarray_sum max_crossing_subarray_sum)
    in
    max_sub_array_helper 0 (size - 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
