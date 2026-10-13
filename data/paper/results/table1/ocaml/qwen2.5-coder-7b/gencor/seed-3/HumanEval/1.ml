
let rec separate_paren_groups (paren_string : string) : string list = 
  let rec helper (chars : char list) (depth : int) (current : string) (acc : string list) : string list =
    match chars with
    | [] -> if current <> "" then current :: acc else acc
    | c :: cs ->
        let new_depth = if c = '(' then depth + 1 else if c = ')' then depth - 1 else depth in
        helper cs new_depth (current ^ Char.escaped c) (if new_depth = 0 && current <> "" then current :: acc else acc)
  in
  helper (String.to_seq paren_string |> List.of_seq) 0 "" []

(* Test the function *)
let test_separate_paren_groups () =
  let result = separate_paren_groups "( ) (( )) (( )( ))" in
  let expected = ["()"; "(())"; "(()())"] in
  assert (result = expected);
  Printf.printf "Test passed: separate_paren_groups\n"



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
