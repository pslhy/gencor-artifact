let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int = 
    let rec max_crossing_sum (arr : int list) (low : int) (mid : int) (high : int) : int =
        let rec summing (i : int) (left_sum : int) : int =
            if i < low then left_sum
            else summing (i - 1) (left_sum + List.nth arr i)
        let left_sum = ref (summing (mid - 1) 0) in
        let rec summing_right (j : int) (right_sum : int) : int =
            if j > high then right_sum
            else summing_right (j + 1) (right_sum + List.nth arr j)
        let right_sum = ref (summing_right (mid) 0) in
        while !left_sum < !right_sum do
            left_sum := !left_sum + List.nth arr (mid - 1);
            mid <- mid - 1
        done;
        while !left_sum > !right_sum do
            right_sum := !right_sum + List.nth arr mid;
            mid <- mid + 1
        done;
        !left_sum + !right_sum
    and max_sub_array_sum_util (arr : int list) (low : int) (high : int) : int =
        if low = high then List.nth arr low
        else let mid = (low + high) / 2 in
             let max_left = max_sub_array_sum_util arr low mid in
             let max_right = max_sub_array_sum_util arr (mid + 1) high in
             let max_cross = max_crossing_sum arr low mid high in
             max max_left (max max_right max_cross)
    in max_sub_array_sum_util (List.flatten (List.init k (fun _ -> a))) 0 ((List.length (List.flatten (List.init k (fun _ -> a)))) - 1)

let largest_sum_repeated a n k = max_sub_array_sum_repeated a n k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
