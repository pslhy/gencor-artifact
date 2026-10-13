let rec count_rotation (arr : int list) : int = 
    let rec find_index (arr : int list) (low : int) (high : int) : int = 
        if low > high then 0
        else 
            let mid = (low + high) / 2 in
            if mid > 0 && arr.(mid) < arr.(mid - 1) then mid
            else if arr.(mid) > arr.(high) then find_index arr (mid + 1) high
            else find_index arr low (mid - 1)
    in
    let n = List.length arr in
    if n = 0 then 0
    else find_index (Array.of_list arr) 0 (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of rotations required to generate a sorted list. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-list/ *)
