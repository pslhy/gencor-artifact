let rec find_First_Missing (array : int list) : int = 
    let rec find_index (arr : int list) (low : int) (high : int) : int = 
        if high >= low then 
            let mid = low + ((high - low) / 2) in 
            if mid > 0 && arr.(mid) > arr.(mid - 1) then 
                mid 
            else if arr.(mid) = mid then 
                find_index arr (mid + 1) high 
            else 
                find_index arr low (mid - 1) 
        else 
            -1 in 
    if array.length = 0 then 0 
    else 
        let index = find_index array 0 (array.length - 1) in 
        if index = -1 then array.(array.length - 1) + 1 
        else index;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the smallest missing number from a sorted list of natural numbers. *)
