(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert the given snake case string to camel case string. *)
let rec snake_to_camel (word : string) : string = 
    let (first, rest) =
        try
            (List.hd (String.explode word), String.implode (List.tl (String.explode word)))
        with
            Failure "list is empty" -> ("", "")
    in
    first ^ String.capitalize_ascii rest

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:23: Unbound value "String.explode" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string = 
    let (first, rest) =
        try
            (List.hd (Str.split (Str.regexp "_") word), String.implode (List.tl (Str.split (Str.regexp "_") word)))
        with
            Failure "list is empty" -> ("", "")
    in
    first ^ String.capitalize_ascii rest

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:23: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string = 
    let (first, rest) =
        try
            (List.hd (Str.split (Str.regexp "_") word), String.implode (List.tl (Str.split (Str.regexp "_") word)))
        with
            Failure "list is empty" -> ("", "")
    in
    first ^ String.capitalize_ascii rest

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:23: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string = 
    let (first, rest) = 
        try
            (Str.string_before word "_", Str.string_after word "_")   (* Modified to Str.string_before and Str.string_after *)
        with
            Failure "list is empty" -> ("", "")                           (* Modified to match the new signature of Str.string_before and Str.string_after *)
    in
    first ^ String.capitalize_ascii rest

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:14: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string = 
    let (first, rest) = 
        try
            (String.sub word 0 (String.index word '_'), String.sub word (String.index word '_' + 1) (String.length word - (String.index word '_' + 1)))
        with
            Not_found -> ("", "")
    in
    first ^ String.capitalize_ascii rest

