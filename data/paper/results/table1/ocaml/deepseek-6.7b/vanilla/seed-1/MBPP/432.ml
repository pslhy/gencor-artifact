let rec median_trapezium (base1 : int) (base2 : int) (height : int) : float =
    if base1 >= 0 && base2 >= 0 && height >= 0 then
        float_of_int ((base1 + base2) * height) / 2.0
    else
        failwith "input must be positive"
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median length of a trapezium. *)
