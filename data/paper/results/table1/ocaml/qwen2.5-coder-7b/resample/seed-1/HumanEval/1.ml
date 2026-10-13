(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Input to this function is a string containing multiple groups of nested parentheses. Your goal is to *)
(*     separate those group into separate strings and return the list of those. *)
(*     Separate groups are balanced (each open brace is properly closed) and not nested within each other *)
(*     Ignore any spaces in the input string. *)
(*     >>> separate_paren_groups "( ) (( )) (( )( ))" *)
(*     ["()"; "(())"; "(()())"] *)
let rec separate_paren_groups (paren_string : string) : string list = 
  let rec process (chars : char list) (depth : int) (current : string) (result : string list) = 
    match chars with
    | [] -> if current <> "" then current :: result else result
    | '(' :: rest -> process rest (depth + 1) (current ^ "(") result
    | ')' :: rest -> if depth > 0 then process rest (depth - 1) (current ^ ")") result 
                    else process chars 0 "" (current :: result)
    | _ :: rest -> process rest depth (current ^ " ") result
  in
  process (String.toList (String.filter (fun c -> c <> ' ') paren_string)) 0 "" []

let () =
  let input = "( ) (( )) (( )( ))" in
  let expected_output = ["()"; "(())"; "(()())"] in
  let actual_output = separate_paren_groups input in
  Printf.printf "Input: %s\n" input;
  Printf.printf "Expected Output: %s\n" (String.concat "; " expected_output);
  Printf.printf "Actual Output: %s\n" (String.concat "; " actual_output);
  assert (actual_output = expected_output)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:12: Unbound value "String.toList" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec separate_paren_groups (paren_string : string) : string list = 
  let rec process (chars : char list) (depth : int) (current : Buffer.t) (result : string list) = 
    match chars with
    | [] -> if Buffer.length current > 0 then Buffer.contents current :: result else result
    | '(' :: rest -> process rest (depth + 1) (Buffer.add_char current '(') result
    | ')' :: rest -> if depth > 0 then process rest (depth - 1) (Buffer.add_char current ')') result 
                    else process chars 0 (Buffer.create 0) (Buffer.contents current :: result)
    | _ :: rest -> process rest depth (Buffer.add_char current ' ') result
  in
  process (String.to_list (String.filter (fun c -> c <> ' ') paren_string)) 0 (Buffer.create 0) []

let () =
  let input = "( ) (( )) (( )( ))" in
  let expected_output = ["()"; "(())"; "(()())"] in
  let actual_output = separate_paren_groups input in
  Printf.printf "Input: %s\n" input;
  Printf.printf "Expected Output: %s\n" (String.concat "; " expected_output);
  Printf.printf "Actual Output: %s\n" (String.concat "; " actual_output);
  assert (actual_output = expected_output)

