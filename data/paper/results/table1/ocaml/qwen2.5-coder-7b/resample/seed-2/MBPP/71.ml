(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
let rec comb_sort (nums : int list) : int list = 
    let rec swap_if_greater a b = if a > b then [b; a] else [a; b]
    and comb_sort' nums step shrink_factor =
        let rec loop lst n sorted =
            match lst with
            | [] | [_] -> lst
            | x::y::rest ->
                if n mod step = 0 then
                    let swapped = swap_if_greater x y in
                    loop (if sorted then swapped else x::swapped@rest) n true
                else 
                    loop (x::y::rest) n sorted
        in if step = 1 then loop nums 0 false else loop nums step false
    in let rec reduce_step step =
        if step > 1 then reduce_step (step / shrink_factor) else step
    in let step = reduce_step (List.length nums) in
    loop [] step true

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:46: Unbound value "shrink_factor" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec comb_sort (nums : int list) : int list = 
    let rec swap_if_greater a b = if a > b then [b; a] else [a; b]
    and comb_sort' nums step shrink_factor =
        let rec loop lst n sorted =
            match lst with
            | [] | [_] -> lst
            | x::y::rest ->
                if n mod step = 0 then
                    let swapped = swap_if_greater x y in
                    loop (if sorted then swapped else x::swapped@rest) n true
                else 
                    loop (x::y::rest) n sorted
        in if step = 1 then loop nums 0 false else loop nums step false
    in let rec reduce_step step shrink_factor =
        if step > 1 then reduce_step (step / shrink_factor) shrink_factor else step
    in let step = reduce_step (List.length nums) 1.3 in
    comb_sort' nums step 1.3

