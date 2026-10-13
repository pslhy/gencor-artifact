let rec median_trapezium (base1 : int) (base2 : int) (height : int) : float =
    (float_of_int ((base1 + base2) / 2)) * (float_of_int height)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median length of a trapezium. *)
