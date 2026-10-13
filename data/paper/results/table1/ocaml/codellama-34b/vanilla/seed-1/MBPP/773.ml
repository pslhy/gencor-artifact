let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
    let rec aux t p offset acc =
        if p = [] then Some (String.toupper text, acc, offset)
        else if t = [] then None
        else if t.[0] = p. then aux t.[1:] p.[1:] (offset + 1) (offset :: acc)
        else None
  aux


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
