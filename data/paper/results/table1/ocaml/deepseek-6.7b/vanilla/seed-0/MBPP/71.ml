let rec comb_sort (nums : int list) : int list =
    let rec shrink_factor factor = if factor >= 1.3 then factor else shrink_factor (factor - 1.0) in
    let rec swap a b list =
        match list with
        | [] -> []
        | x::xs -> if x = a then b :: swap a b xs else x :: swap a b xs in
    let rec compare_and_swap list factor =
        match list with
        | [] -> []
        | x::y::rest -> if x > y then y :: compare_and_swap (x::rest) factor else x :: compare_and_swap (y::rest) factor
        | _::[] -> [] in
    let rec sort list factor =
        if factor >= 1.0 then
            let sorted = compare_and_swap list factor in
            if sorted = list then
                sorted
            else
                sort sorted factor
        else
            list in
    match nums with
    | [] -> []
    | _ -> let factor = shrink_factor 1.24733 in sort nums factor


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
