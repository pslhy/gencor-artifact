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
    (* First, we'll define a function to extract the first group of balanced parentheses from the 
       input string *)
    let rec extract_group (str : string) : string * string = 
        let rec loop (str : string) (count : int) (acc : string) : string * string = 
            if count = 0 then (str, acc)
            else 
                match str.(0) with
                | '(' -> loop str.succ(1) (count + 1) (acc + "(")
                | ')' -> loop str.succ(1) (count - 1) (acc + ")")
                | _ -> loop str.succ(1) count (acc + str.(0))
        in loop str 0 ""
    in
    (* Now, we'll keep extracting groups until the input string is empty *)
    let rec loop (str : string) (acc : string list) : string list = 
        if str = "" then acc
        else 
            let (group, rest) = extract_group str in 
            loop rest (group :: acc)
    in loop paren_string []

