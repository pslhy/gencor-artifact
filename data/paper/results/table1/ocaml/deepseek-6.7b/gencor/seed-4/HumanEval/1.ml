
let rec separate_paren_groups (paren_string : string) : string list =
  let paren_chars = List.filter (fun c -> c = '(' || c = ')') @@ (String.to_seq paren_string) in 
  let rec separator lst acc =
    match lst with
    | '('::xs -> separator xs (acc + 1)
    | ')'::xs -> if acc > 0 then separator xs (acc - 1) else []
    | [] -> []
    | _::xs -> separator xs acc in
  let parts = separator (List.rev paren_chars) 0 in
  let result = parts |> List.map (fun i -> List.rev |> List.filter (fun c -> c = '(' || c = ')') @@ List.rev_append i []) in
  result |> List.map (String.concat "")

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
