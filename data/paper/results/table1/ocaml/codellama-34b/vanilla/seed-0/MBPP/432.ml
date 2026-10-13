let rec median_trapezium (base1 : int) (base2 : int) (height : int) : float =
    if base1 <= base2 then
        ((base1 + base2) *. 0.5)
    else if base1 <= height then
        float_of_int(height * 2)
    else
        nan


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median length of a trapezium. *)
