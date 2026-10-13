let rec strlen (string : string) : int = 
    match string with 
    | "" -> 0 
    | _ :: t -> 1 + strlen t 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return length of given string *)
(*     >>> strlen "" *)
(*     0 *)
(*     >>> strlen "abc" *)
(*     3 *)
