let rec separate_paren_groups (paren_string : string) : string list =
  let len = String.length in
  let rec traverse_group (i, acc) =
    if i = len || paren_string.[i] = '(' then i + 1, acc
    else (i + 1, acc + 1)
  in
  match paren_string.[0] with
  | '(' ->
      let (i, acc) = traverse_group (1, 1) in
      if i = len || paren_string.[i] = ')' then acc
      else raise (Invalid_argument "Missing closing parenthesis")
  | _ -> raise (Invalid_argument "Missing opening parenthesis")
  | _ -> raise (Invalid_argument "Invalid input string")


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
