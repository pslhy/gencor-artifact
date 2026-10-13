
let rec separate_paren_groups (paren_string : string) : string list =
  let len = String.length paren_string in
  let rec aux i acc =
    if i = len then List.rev acc
    else
      let c = String.get paren_string i in
      if c = '(' then
        let j, k = aux (i + 1) [] in
        aux (k + 1) (String.sub paren_string i (j - i) :: acc)
      else aux (i + 1) acc
  in
  aux 0 []

let separation = separate_paren_groups "( ) (( )) (( )( ))" in_channel_length

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input to this function is a string containing multiple groups of nested parentheses. Your goal is to *)
(*     separate those group into separate strings and return the list of those. *)
(*     Separate groups are balanced (each open brace is properly closed) and not nested within each other *)
(*     Ignore any spaces in the input string. *)
(*     >>> separate_paren_groups "( ) (( )) (( )( ))" *)
(*     ["()"; "(())"; "(()())"] *)
