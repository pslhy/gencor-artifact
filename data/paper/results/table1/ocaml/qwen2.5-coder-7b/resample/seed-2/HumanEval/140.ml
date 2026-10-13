(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a string text, replace all spaces in it with underscores, *)
(*     and if a string has more than 2 consecutive spaces, *)
(*     then replace all consecutive spaces with - *)
(*     >>> fix_spaces " Example" *)
(*     "Example" *)
(*     >>> fix_spaces " Example 1" *)
(*     "Example_1" *)
(*     >>> fix_spaces " Example 2" *)
(*     "_Example_2" *)
(*     >>> fix_spaces " Example 3" *)
(*     "_Example-3" *)
let rec fix_spaces (text : string) : string = 
    let rec helper chars result count =
        match chars with
        | [] -> result
        | '_' :: rest -> 
            if count > 2 then
                helper rest (result ^ "-") (count - 1)
            else
                helper rest (result ^ "_") count
        | char :: rest -> 
            if count > 2 then
                helper rest (result ^ "_") 0
            else
                helper rest (result ^ (if char = ' ' then "_" else string char)) (if char = ' ' then count + 1 else 0)
    in
    helper (List.of_string text) "" 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:68: Unbound value "string" *)
(*     Hint: Did you mean "stdin"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fix_spaces (text : string) : string = 
    let rec helper chars result count =
        match chars with
        | [] -> result
        | '_' :: rest -> 
            if count > 2 then
                helper rest (result ^ "-") (count - 1)
            else
                helper rest (result ^ "_") count
        | ' ' :: rest -> 
            if count > 2 then
                helper rest (result ^ "_") 0
            else
                helper rest (result ^ "_") (count + 1)
        | char :: rest -> 
            if count > 2 then
                helper rest (result ^ "_") 0
            else
                helper rest (result ^ (string char)) (if char = ' ' then count + 1 else 0)
    in
    helper (List.of_string text) "" 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:19:40: Unbound value "string" *)
(*     Hint: Did you mean "stdin"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fix_spaces (text : string) : string = 
    let rec helper chars result count =
        match chars with
        | [] -> result
        | '_' :: rest -> 
            if count > 2 then
                helper rest (result ^ "-") (count - 1)
            else
                helper rest (result ^ "_") count
        | ' ' :: rest -> 
            if count > 2 then
                helper rest (result ^ "_") 0
            else
                helper rest (result ^ "_") (count + 1)
        | char :: rest -> 
            if count > 2 then
                helper rest (result ^ "_") 0
            else
                helper rest (result ^ (Char.escaped char)) (if char = ' ' then count + 1 else 0)
    in
    helper (List.of_string text) "" 0

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:21:13: Unbound value "List.of_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fix_spaces (text : string) : string = 
    let rec helper chars result count =
        match chars with
        | [] -> result
        | '_' :: rest -> 
            if count > 2 then
                helper rest (result ^ "-") (count - 1)
            else
                helper rest (result ^ "_") count
        | ' ' :: rest -> 
            if count > 2 then
                helper rest (result ^ "_") 0
            else
                helper rest (result ^ "_") (count + 1)
        | char :: rest -> 
            if count > 2 then
                helper rest (result ^ "_") 0
            else
                helper rest (result ^ (Char.escaped char)) (if char = ' ' then count + 1 else 0)
    in
    helper (String.to_seq text |> Seq.map (fun c -> c) |> Seq.toList) "" 0

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:21:59: Unbound value "Seq.toList" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fix_spaces (text : string) : string = 
    let rec helper chars result count =
        match chars with
        | [] -> result
        | '_' :: rest -> 
            if count > 2 then
                helper rest (result ^ "-") (count - 1)
            else
                helper rest (result ^ "_") count
        | ' ' :: rest -> 
            if count > 2 then
                helper rest (result ^ "_") 0
            else
                helper rest (result ^ "_") (count + 1)
        | char :: rest -> 
            if count > 2 then
                helper rest (result ^ "_") 0
            else
                helper rest (result ^ (Char.escaped char)) (if char = ' ' then count + 1 else 0)
    in
    helper (String.to_seq text |> Seq.map (fun c -> c)) "" 0

