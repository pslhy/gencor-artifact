(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a string, find out how many distinct characters (regardless of case) does it consist of *)
(*     >>> count_distinct_characters "xyzXYZ" *)
(*     3 *)
(*     >>> count_distinct_characters "Jerry" *)
(*     4 *)
let rec count_distinct_characters (string : string) : int = 
    let uppercase_string = String.uppercase string in
    let current_char = Char.char_of_int 0 in
    let rec loop count = 
        if uppercase_string = "" then
            count
        else 
            let next_char = String.get uppercase_string 0 in
            if current_char <> next_char then
                loop (count + 1)
            else 
                loop count
    in
    loop 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:28: Unbound value "String.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_distinct_characters (string : string) : int =
    let uppercase_string = Str.uppercase string in
    let current_char = Char.code 'a' in
    let rec loop count =
        if current_char >= Char.code 'z' then
            count
        else
            let c = String.get uppercase_string (Char.code current_char) in
            let count' = if c = current_char then count + 1 else count in
            loop (count' + 1)
    in
    loop 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:28: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_distinct_characters (string : string) : int =
    let uppercase_string = String.uppercase string in
    let current_char = Char.code 'a' in
    let rec loop count =
        if current_char >= Char.code 'z' then
            count
        else
            let c = String.get uppercase_string (Char.code current_char) in
            let count' = if c = current_char then count + 1 else count in
            loop (count' + 1)
    in
    loop 0

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:28: Unbound value "String.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_distinct_characters (string : string) : int =
    let uppercase_string = string in
    let current_char = Char.code 'a' in
    let rec loop count =
        if current_char >= Char.code 'z' then
            count
        else
            let c = Char.uppercase (String.get uppercase_string (Char.code current_char)) in
            let count' = if c = Char.code current_char then count + 1 else count in
            loop (count' + 1)
    in
    loop 0

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:21: Unbound value "Char.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_distinct_characters (string : string) : int =
    let uppercase_string = String.uppercase string in
    let current_char = Char.code 'a' in
    let rec loop count =
        if current_char >= Char.code 'z' then
            count
        else
            let c = String.get uppercase_string (Char.code current_char) in
            let count' = if c = Char.code current_char then count + 1 else count in
            loop (count' + 1)
    in
    loop 0

