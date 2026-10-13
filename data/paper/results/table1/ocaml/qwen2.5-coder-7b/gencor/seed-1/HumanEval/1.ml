
let rec separate_paren_groups (paren_string : string) : string list = 
  let rec process (chars : char list) (depth : int) (current : string) (result : string list) = 
    match chars with
    | [] -> if current <> "" then current :: result else result
    | '(' :: rest -> process rest (depth + 1) (current ^ "(") result
    | ')' :: rest -> if depth > 0 then process rest (depth - 1) (current ^ ")") result 
                    else process chars 0 "" (current :: result)
    | _ :: rest -> process rest depth (current ^ " ") result
  in
  process (String.to_seq paren_string |> Seq.filter (fun c -> c <> ' ') |> Seq.to_dispenser
    process (List.of_seq paren_string) 0 "" []
  
separate_paren_groups "( ) (( )) (( )( ))"
  ; "()" "(()" "(()()" "())" "))"
  ; (fun res -> List.map (fun s -> s ^ "") res ""
  ; ["()"; "(())"; "(()())"] ); "(()())"
  ; ("(; (" ) "(()))(" (); "()" "(())" "(()())"
  ; ["();"; "(())"; "(()())"] )

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
