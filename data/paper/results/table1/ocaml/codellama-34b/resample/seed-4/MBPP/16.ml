(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise. *)
let rec text_lowercase_underscore (text : string) : bool = 
    (* base case: empty string with no underscore *)
    let rec text_lowercase (text : string) : bool =
        if String.length text = 0 then true 
        else (List.nth text 0).is_lowercase() && text_lowercase(String.sub text 1 (String.length text - 1))
    in
    (* base case: character is underscore *)
    if String.length text = 0 then false 
    else (List.nth text 0).is_underscore() && text_lowercase(String.sub text 1 (String.length text - 1))
;;

