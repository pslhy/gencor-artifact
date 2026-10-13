(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
let rec move_num (test_str : string) : string = 
    let is_num (c : char) =
        c >= '0' && c <= '9' in
    let is_not_num (c : char) =
        not (is_num c) in
    let rec move_num_helper (i : int) (str : string) : string = 
        match str with 
        | "" -> ""
        | x::xs -> 
        if (is_num x) then move_num_helper i (str[i+1..^1] ^ x :: str[0..i-1])
        else move_num_helper (i+1) str in
    move_num_helper 0 test_str

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:57: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string =
    let rec is_num (c : char) =
        c >= '0' && c <= '9' in
    let rec is_not_num (c : char) =
        not (is_num c) in
    let rec move_num_helper (i : int) (str : string) : string =
        match str with
        | "" -> ""
        | x::xs ->
            if (c is_num) then move_num_helper i (str[i+1..^1] ^ c :: str[0..i-1]) else move_num_helper (i+1) str in
    move_num_helper 0 test_str

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:61: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string =
    let rec is_num (c : char) =
        c >= '0' && c <= '9' in
    let rec is_not_num (c : char) =
        not (is_num c) in
    let rec move_num_helper (i : int) (str : string) : string =
        match str with
        | "" -> ""
        | x::xs ->
            if (is_num x) then move_num_helper i (str[i+1..^1] ^ x :: str[0..i-1]) else move_num_helper (i+1) str in
    move_num_helper 0 test_str

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:61: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string =
    let rec is_num (c : char) =
        c >= '0' && c <= '9' in
    let rec is_not_num (c : char) =
        not (is_num c) in
    let rec move_num_helper (i : int) (str : string) : string =
        match str with
        | "" -> ""
        | x::xs ->
            if (is_num x) then move_num_helper i (str[i+1..^1] ^ x :: str[0..i-1]) else move_num_helper (i+1) str
    in
    if (is_num (test_str[0])) then
        move_num_helper 0 test_str
    else
        test_str

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:61: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string =
    let rec is_num (c : char) =
        c >= '0' && c <= '9' in
    let rec is_not_num (c : char) =
        not (is_num c) in
    let rec move_num_helper (i : int) (str : string) : string =
        match str with
        | "" -> ""
        | x::xs ->
            if (is_num x) then move_num_helper i (str[i+1..^1] ^ x :: str[0..i-1]) else move_num_helper (i+1) str
    in
    if (is_num (test_str[0])) then
        move_num_helper 0 test_str
    else
        test_str

