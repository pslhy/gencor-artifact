let rec median_numbers (a : int) (b : int) (c : int) : float =
    let midpoint = (a + b + c) / 2 in
    if (a <= midpoint && midpoint <= c) || (c <= midpoint && midpoint <= a)
    then
        float_of_int midpoint
    else
        let midpoint' = if a >= b then a else b in
        float_of_int midpoint'


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of three numbers. *)
