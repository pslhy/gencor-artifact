let rec remove_whitespaces (text1 : string) : string =
    let is_whitespace (c : char) : bool = c = ' ' || c = '\t' || c = '\n' || c = '\r' in
    if text1 = "" then text1
    else if is_whitespace text1.[0] then remove_whitespaces (String.sub text1 1 (String.length text1 - 1))
    else text1.[0] ^ remove_whitespaces (String.sub text1 1 (String.length text1 - 1))
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from the given string. *)
