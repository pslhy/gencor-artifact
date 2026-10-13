let rec upper_ctr (str : string) : int =
    if str = "" then 0
    else if String.uppercase_ascii (String.sub str 0 1) = String.sub str 0 1
           then 1 + upper_ctr (String.sub str 1 (String.length str - 1))
           else upper_ctr (String.sub str 1 (String.length str - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the upper case characters in a given string. *)
