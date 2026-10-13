let rec max_Abs_Diff (arr : int list) : int =
    let rec min_array (arr : int list) : int = 
        match arr with
            | [] -> max_int
            | h::t -> min h (min_array t)
    in
    let rec max_array (arr : int list) : int = 
        match arr with
            | [] -> min_int
            | h::t -> max h (max_array t)
    in
    max_array arr - min_array arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the maximum difference between any two elements in a given list. *)
