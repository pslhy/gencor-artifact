let rec concatenate (strings : string list) : string = 
    (* base case: empty list with empty string *)
    match strings with
    | [] -> ""
    (* recursive case: concatenate the head and tail parts *)
    | head :: tail -> head ^ (concatenate tail)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Concatenate list of strings into a single string *)
(*     >>> concatenate [] *)
(*     "" *)
(*     >>> concatenate ["a"; "b"; "c"] *)
(*     "abc" *)
