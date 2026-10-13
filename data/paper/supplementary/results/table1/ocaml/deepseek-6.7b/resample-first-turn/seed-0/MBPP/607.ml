let rec find_literals (text : string) (pattern : string) :  string * int * int =
    let re = Str.regexp pattern in
    let loc = Str.search_forward re text 0 in
    let end_loc = loc + String.length pattern - 1 in
    (String.sub text loc (end_loc - loc + 1), loc, end_loc);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
