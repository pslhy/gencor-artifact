let rec separate_paren_groups (paren_string : string) : string list =
  let paren_string = String.trim paren_string in
  match String.length paren_string with
  | 0 -> []
  | _ -> match paren_string.[0] with
    | '(' -> let (group, rest) = separate_group paren_string in
               group :: separate_paren_groups rest
    | _ -> separate_paren_groups (String.sub paren_string 1 (String.length paren_string - 1)) 
and separate_group (paren_string : string) : string * string =
  let rec loop (i : int) (stack : int) (s : string) : string =
    if i >= String.length s then failwith "Unbalanced parentheses"
    else match s.[i] with
      | '(' -> loop (i+1) (stack + 1) s
      | ')' -> if stack = 1 then String.sub s 1 i
               else loop (i+1) (stack - 1) s
      | _ -> loop (i+1) stack s in
  let group = loop 0 0 paren_string in
  group, String.sub paren_string (String.length group) (String.length paren_string - String.length group)


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
