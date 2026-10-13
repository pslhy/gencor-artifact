let rec string_sequence (n : int) : string =
    match n with
    | 0 -> "0"
    | _ -> string_of_int (n) ^ " " ^ (string_sequence (n-1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return a string containing space-delimited numbers starting from 0 upto n inclusive. *)
(*     >>> string_sequence 0 *)
(*     "0" *)
(*     >>> string_sequence 5 *)
(*     "0 1 2 3 4 5" *)
