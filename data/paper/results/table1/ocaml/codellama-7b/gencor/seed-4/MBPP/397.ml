
let rec median_numbers (a : int) (b : int) (c : int) : float = 
    let (min, max) =
        if a < b && a < c then (a, b, c)
        else if b < a && b < c then (b, c, a)
        else (c, a, b) in
    let (_, _, median) =
        if max = min then (max, min, max)
        else (max, min, max) in
    float_of_int median

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of three numbers. *)
