let rec truncate_number (number : float) : float = 
    let int_part = truncate number in
    number -. float int_part


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive floating point number, it can be decomposed into *)
(*     and integer part (largest integer smaller than given number) and decimals *)
(*     (leftover part always smaller than 1). *)
(*     Return the decimal part of the number. *)
(*     >>> truncate_number 3.5 *)
(*     0.5 *)
