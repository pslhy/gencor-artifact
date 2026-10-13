
let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int = 
    let rec max_crossing_sum (arr : int list) (low : int) (mid : int) (high : int) : int =
        let rec summing (i : int) (left_sum : int) : int =
            if i < low then left_sum
            else summing (i - 1) (left_sum + List.nth arr i)
        in
        let rec summing' (i : int) (right_sum : int) : int =
            if i > high then right_sum
            else summing' (i + 1) (right_sum + List.nth arr i)
        in
        let left_sum = summing mid (List.nth arr mid) in
        let right_sum = summing' (mid + 1) 0 in
        max left_sum right_sum + List.nth arr mid + max_crossing_sum arr low mid (mid - 1) + max_crossing_sum arr (mid + 1) high mid
    and max_sub_array_sum_rec (arr : int list) (low : int) (high : int) : int =
        if low = high then List.nth arr low
        else
            let mid = (low + high) / 2 in
            max (max_sub_array_sum_rec arr low mid) (max_sub_array_sum_rec arr (mid + 1) high) (max_crossing_sum arr low mid high)
    in
    let repeated_array = List.flatten (List.init k (fun _ -> a)) in
    max_sub_array_sum_rec repeated_array 0 (List.length repeated_array - 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
