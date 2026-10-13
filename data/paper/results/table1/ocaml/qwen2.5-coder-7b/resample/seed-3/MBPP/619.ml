(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
let rec move_num (test_str : string) : string = 
    let rec helper (chars : char list) (num_chars : char list) : char list =
        match chars with
        | [] -> List.rev num_chars
        | h::t -> if Char.isdigit h then helper t (h::num_chars) else helper t chars
    in
    let result = helper (String.to_list test_str) [] in
    String.of_list result

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:22: Unbound value "Char.isdigit" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string = 
    let rec helper (chars : char list) (num_chars : char list) : char list =
        match chars with
        | [] -> List.rev num_chars
        | h::t -> if Char.is_digit h then helper t (h::num_chars) else helper t chars
    in
    let result = helper (String.to_list test_str) [] in
    String.of_list result

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:22: Unbound value "Char.is_digit" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string = 
    let rec helper (chars : char list) (num_chars : char list) : char list =
        match chars with
        | [] -> List.rev num_chars
        | h::t -> if h >= '0' && h <= '9' then helper t (h::num_chars) else helper t chars
    in
    let result = helper (String.to_list test_str) [] in
    String.of_list result

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:26: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string = 
    let rec helper (chars : char list) (num_chars : char list) : char list =
        match chars with
        | [] -> List.rev num_chars
        | h::t -> if h >= '0' && h <= '9' then helper t (h::num_chars) else helper t chars
    in
    let result = helper (List.of_seq (String.toseq test_str)) [] in
    String.of_seq (List.to_seq result)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:39: Unbound value "String.toseq" *)
(*     Hint: Did you mean "to_seq"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string = 
    let rec helper (chars : char list) (num_chars : char list) : char list =
        match chars with
        | [] -> List.rev num_chars
        | h::t -> if h >= '0' && h <= '9' then helper t (h::num_chars) else helper t chars
    in
    let result = helper (List.of_seq (String.to_seq test_str)) [] in
    String.of_seq (List.to_seq result)

