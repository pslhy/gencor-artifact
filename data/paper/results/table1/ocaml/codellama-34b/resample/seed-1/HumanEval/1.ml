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
    let rec aux paren_string result =
        let (l, r), rest = String.split_at paren_string in
        if l = ")" then
            if r = "(" then
                (String.init (String.length paren_string + 1) (fun i -> if i % 2 = 0 then "(" else ")")) :: result
            else
                "" :: result
        else
            aux rest (String.init (String.length paren_string - 1) (fun i -> if i % 2 = 0 then l else r))
    in
    aux paren_string []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:28: Unbound value "String.split_at" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec separate_paren_groups (paren_string : string) : string list =
    let rec aux paren_string result =
        let (l, r), rest = String.split_at paren_string in
        if l = ")" then
            if r = "(" then
                (String.init (String.length paren_string + 1) (fun i -> if i % 2 = 0 then "(" else ")")) :: result
            else
                "" :: result
        else
            aux rest (String.init (String.length paren_string - 1) (fun i -> if i % 2 = 0 then l else r))
    in
    List.rev (aux paren_string [])

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:28: Unbound value "String.split_at" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec separate_paren_groups (paren_string : string) : string list =
    let rec aux paren_string result =
        match String.split_at paren_string with
        | "" -> result
        | paren_string ->
            if String.get paren_string 0 = ")" then
                if String.get paren_string 1 = "(" then
                    aux (String.sub paren_string 2 (String.length paren_string - 2))
                        ((String.init (String.length paren_string - 2) (fun i -> if i % 2 = 0 then "(" else ")")))
                else
                    aux (String.sub paren_string 1 (String.length paren_string - 1)) result
            else
                aux (String.sub paren_string 1 (String.length paren_string - 1)) (paren_string :: result)
    in
    aux paren_string []

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:15: Unbound value "String.split_at" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec separate_paren_groups (paren_string : string) : string list =
    let rec aux paren_string result =
        match paren_string with
        | "" -> result
        | _ ->
            if paren_string.[0] = ')' then
                if paren_string.[1] = '(' then
                    aux (String.sub paren_string 2 (String.length paren_string - 2))
                        ((String.init (String.length paren_string - 2) (fun i -> if i % 2 = 0 then "(" else ")")))
                else
                    aux (String.sub paren_string 1 (String.length paren_string - 1)) result
            else
                aux (String.sub paren_string 1 (String.length paren_string - 1)) (paren_string :: result)
    in
    aux paren_string []

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:87: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec separate_paren_groups (paren_string : string) : string list =
    let rec aux paren_string result =
        match paren_string with
        | "" -> result
        | _ ->
            if paren_string.[0] = ')' then
                if paren_string.[1] = '(' then
                    aux (String.sub paren_string 2 (String.length paren_string - 2))
                        ((String.init (String.length paren_string - 2) (fun i -> if i % 2 = 0 then "(" else ")")))
                else
                    aux (String.sub paren_string 1 (String.length paren_string - 1)) result
            else
                aux (String.sub paren_string 1 (String.length paren_string - 1)) (paren_string :: result)
    in
    aux paren_string []

