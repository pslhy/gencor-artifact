(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the upper case characters in a given string. *)
let rec upper_ctr (str : string) : int = 
    match String.length str with
    | 0 -> 0
    | _ ->
        let char = String.get str 0 in
        if Char.uppercase char then 
            1 + upper_ctr (String.sub str 1 (String.length str - 1))
        else 
            upper_ctr (String.sub str 1 (String.length str - 1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:12: Unbound value "Char.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec upper_ctr (str : string) : int = 
    match String.length str with
    | 0 -> 0
    | _ ->
        let char = String.get str 0 in
        if is_uppercase char then 
            1 + upper_ctr (String.sub str 1 (String.length str - 1))
        else 
            upper_ctr (String.sub str 1 (String.length str - 1))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:12: Unbound value "is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec upper_ctr (str : string) : int = 
    match String.length str with
    | 0 -> 0
    | _ ->
        let char = String.get str 0 in
        if Char.uppercase char = char then 
            1 + upper_ctr (String.sub str 1 (String.length str - 1))
        else 
            upper_ctr (String.sub str 1 (String.length str - 1))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:12: Unbound value "Char.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec upper_ctr (str : string) : int = 
    match String.length str with
    | 0 -> 0
    | _ ->
        let char = String.get str 0 in
        if char = Char.uppercase char then 
            1 + upper_ctr (String.sub str 1 (String.length str - 1))
        else 
            upper_ctr (String.sub str 1 (String.length str - 1))

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:19: Unbound value "Char.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec upper_ctr (str : string) : int = 
    match String.length str with
    | 0 -> 0
    | _ ->
        let char = String.get str 0 in
        if Char.is_uppercase char then 
            1 + upper_ctr (String.sub str 1 (String.length str - 1))
        else 
            upper_ctr (String.sub str 1 (String.length str - 1))

