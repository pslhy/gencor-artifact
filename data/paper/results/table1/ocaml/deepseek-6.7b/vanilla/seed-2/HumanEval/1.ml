let rec separate_paren_groups (paren_string : string) : string list =
  let rec helper paren_string level acc =
    match String.to_seq paren_string with
    | ' ' | '\n' | '\t' | '\r' | '\011' | '\012' | '\013' -> helper (String.of_seq (Seq.drop 1 paren_string)) level acc
    | '(' -> helper (String.of_seq (Seq.drop 1 paren_string)) (level + 1) acc
    | ')' -> if level = 0 then raise (Invalid_argument "Mismatched parentheses")
             else if level = 1 then helper (String.of_seq (Seq.drop 1 paren_string)) 0 (acc ^ ")")
             else helper (String.of_seq (Seq.drop 1 paren_string)) (level - 1) (acc ^ ")")
    | _ -> if level <> 0 then raise (Invalid_argument "Mismatched parentheses")
           else match String.index_from paren_string 1 '(' with
                | exception Not_found -> [acc]
                | i -> let group_start = String.sub paren_string 0 i
                           and group_end = String.sub paren_string i (String.length paren_string - i) in
                       group_start :: helper group_end 0 ""
  in List.rev (helper (String.filter (fun x -> x <> ' ') paren_string) 0 "")


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
