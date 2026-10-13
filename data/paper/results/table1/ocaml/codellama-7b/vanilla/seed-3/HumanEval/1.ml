let rec separate_paren_groups (paren_string : string) : string list =
  let len = String.length paren_string in
  if len = 0 then []
  else
    let rec separate_helper (start : int) (end_ : int) (acc : string list) : string list =
      if start = end_ then acc
      else
        let c = String.get paren_string end_ in
        match c with
        | '(' -> separate_helper start (end_ + 1) (acc @ [String.sub paren_string start (end_ - start + 1)])
        | ')' -> separate_helper (start + 1) end_ (acc @ [String.sub paren_string start (end_ - start + 1)])
        | _ -> separate_helper start (end_ + 1) acc
    in
    match String.get paren_string 0 with
    | '(' -> separate_helper 0 1 [String.sub paren_string 0 1]
    | _ -> separate_helper 0 0 []

let separate_paren_groups (paren_string : string) : string list =
  separate_paren_groups paren_string

let _ = separate_paren_groups "( () (()) ( ()()())))"


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
