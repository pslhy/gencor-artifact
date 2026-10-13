(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
let rec max_run_uppercase (test_str : string) : int = 
    (* Declare and initialize local variables *)
    let curr_run = ref 0 in
    let max_run = ref 0 in
    let i = ref 0 in

    (* Loop through all characters in the input string *)
    while !i < String.length(test_str) do
        if Char.is_uppercase test_str.[!i] then
            (* If the current character is uppercase, increment the current run length *)
            curr_run := !curr_run + 1;
            if !curr_run > !max_run then
                (* If the current run length is greater than the maximum run length so far, update the maximum run length *)
                max_run := !curr_run;

        (* Otherwise, reset the current run length to 1 *)
        curr_run := 1;

        (* Move on to the next character in the string *)
        i := !i + 1
    done;

    (* Return the maximum run length *)
    !max_run

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:12: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_run_uppercase (test_str : string) : int =
    let curr_run = ref 0 in
    let max_run = ref 0 in
    let i = ref 0 in
    while !i < String.length(test_str) do
        if Char.uppercase_of_char test_str.[!i] = test_str.[!i] then
            curr_run := !curr_run + 1;
            if !curr_run > !max_run then
                max_run := !curr_run;

        curr_run := 1;

        i := !i + 1
    done;

    !max_run

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:12: Unbound value "Char.uppercase_of_char" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_run_uppercase (test_str : string) : int =
    let curr_run = ref 0 in
    let max_run = ref 0 in
    let i = ref 0 in
    while !i < String.length(test_str) do
        if test_str.[!i] = Char.uppercase test_str.[!i] then
            curr_run := !curr_run + 1;
            if !curr_run > !max_run then
                max_run := !curr_run;

        curr_run := 1;

        i := !i + 1
    done;

    !max_run

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:28: Unbound value "Char.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_run_uppercase (test_str : string) : int =
    let curr_run = ref 0 in
    let max_run = ref 0 in
    let i = ref 0 in
    while !i < String.length(test_str) do
        if test_str.[!i] = Char.uppercase_of_char test_str.[!i] then
            curr_run := !curr_run + 1;
            if !curr_run > !max_run then
                max_run := !curr_run;

        curr_run := 1;

        i := !i + 1
    done;

    !max_run

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:28: Unbound value "Char.uppercase_of_char" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_run_uppercase (test_str : string) : int =
    let curr_run = ref 0 in
    let max_run = ref 0 in
    let i = ref 0 in
    while !i < String.length(test_str) do
        if test_str.[!i] = Char.uppercase test_str.[!i] then
            curr_run := !curr_run + 1;
            if !curr_run > !max_run then
                max_run := !curr_run;

        curr_run := 1;

        i := !i + 1
    done;

    !max_run

