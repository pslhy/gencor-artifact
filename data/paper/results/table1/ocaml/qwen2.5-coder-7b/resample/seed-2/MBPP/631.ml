(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to replace whitespaces with an underscore and vice versa in a given string. *)
let rec replace_spaces (text : string) : string = 
    let rec helper chars result = 
        match chars with
        | [] -> result
        | '_' :: rest -> helper rest (result ^ " ")
        | ' ' :: rest -> helper rest (result ^ "_")
        | c :: rest -> helper rest (result ^ (String.make 1 c))
    in
    helper (List.of_string text) ""

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:13: Unbound value "List.of_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec replace_spaces (text : string) : string = 
    let rec helper chars result = 
        match chars with
        | [] -> result
        | '_' :: rest -> helper rest (result ^ " ")
        | ' ' :: rest -> helper rest (result ^ "_")
        | c :: rest -> helper rest (result ^ (String.make 1 c))
    in
    helper (Str.split_chars text) ""

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:13: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec replace_spaces (text : string) : string = 
    let rec helper chars result = 
        match chars with
        | [] -> result
        | '_' :: rest -> helper rest (result ^ " ")
        | ' ' :: rest -> helper rest (result ^ "_")
        | c :: rest -> helper rest (result ^ (String.make 1 c))
    in
    helper (String.to_seq text |> Seq.to_list) ""

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:35: Unbound value "Seq.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec replace_spaces (text : string) : string = 
    let rec helper chars result = 
        match chars with
        | [] -> result
        | '_' :: rest -> helper rest (result ^ " ")
        | ' ' :: rest -> helper rest (result ^ "_")
        | c :: rest -> helper rest (result ^ (String.make 1 c))
    in
    helper (List.of_seq (String.to_seq text)) ""

