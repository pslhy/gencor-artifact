let rec separate_paren_groups (paren_string : string) : string list =
  match paren_string with
  | "(" :: tl ->
    let (group, rest) = take_until_matching_paren tl
    in
      (group) :: separate_paren_groups rest
  | _ -> []
and take_until_matching_paren (lst : char list) : (string * char list) =
  let rec aux (lst : char list) (group : string) : (string * char list) =
    match lst with
    | '(' :: tl -> aux tl (group ^ "(")
    | ')' :: tl -> (group, tl)
    | hd :: tl -> aux tl (group ^ string_of_char hd)
    | [] -> failwith "Unmatched parentheses!"
  in
    aux lst ""


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
