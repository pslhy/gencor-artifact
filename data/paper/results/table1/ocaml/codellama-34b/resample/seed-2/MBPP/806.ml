(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
let rec max_run_uppercase (test_str : string) : int =
    let len = String.length test_str in
    let rec aux i =
        if i >= len then
            0
        else if Char.is_uppercase test_str.[i] then
            let j = i + 1 in
            if j < len && Char.is_uppercase test_str.[j] then
                aux j + 1
            else
                1
        else
            aux (i + 1)
    in
    aux 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:17: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_run_uppercase (test_str : string) : int =
    let len = String.length test_str in
    let rec aux i =
        if i >= len then
            0
        else if Char.is_uppercase test_str.[i] then
            let j = i + 1 in
            if j < len && Char.is_uppercase test_str.[j] then
                aux j + 1
            else
                1
        else
            aux (i + 1)
    in
    aux 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:17: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_run_uppercase (test_str : string) : int =
    let len = String.length test_str in
    let rec aux i =
        if i >= len then
            0
        else if Char.code test_str.[i] >= Char.code 'A' && Char.code test_str.[i] <= Char.code 'Z' then
            let j = i + 1 in
            if j < len && Char.code test_str.[j] >= Char.code 'A' && Char.code test_str.[j] <= Char.code 'Z' then
                aux j + 1
            else
                1
        else
            aux (i + 1)
    in
    aux 0

