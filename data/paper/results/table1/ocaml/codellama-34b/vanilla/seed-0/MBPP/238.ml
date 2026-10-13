let rec number_of_substrings (str : string) : int =
    if str = "" then 0
    else if str.[0] = ' ' then number_of_substrings (String.sub str 1 (String.length str - 1))
    else String.count str ' ' + 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of non-empty substrings of a given string. *)
