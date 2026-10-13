(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert the given decimal number to its binary equivalent, represented as a string with no leading zeros. *)
let rec decimal_to_binary (n : int) : string =
    if n = 0 then "0"
    else if n = 1 then "1"
    else
        let (left, right) = (decimal_to_binary (n / 2), decimal_to_binary (n % 2)) in
        if left = "0" then right
        else if right = "0" then left
        else left ^ right

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:78: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec decimal_to_binary (n : int) : string =
    if n = 0 then "0"
    else if n = 1 then "1"
    else
        let (left, right) = (decimal_to_binary (n / 2), decimal_to_binary (n % 2)) in
        String.concat "" [left; " "; right]

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:78: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec decimal_to_binary (n : int) : string =
    if n = 0 then "0"
    else if n = 1 then "1"
    else
        let (left, right) = (decimal_to_binary (n / 2), decimal_to_binary (n % 2)) in
        String.concat "" [left; " "; right]

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:78: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec decimal_to_binary (n : int) : string =
    if n = 0 then "0"
    else if n = 1 then "1"
    else
        let (left, right) = (n / 2, n % 2) in
        String.concat "" [decimal_to_binary left; " "; decimal_to_binary right]

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:39: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec decimal_to_binary (n : int) : string =
    if n = 0 then "0"
    else if n = 1 then "1"
    else
        let (left, right) = (n / 2, n % 2) in
        String.concat "" [decimal_to_binary left; " "; decimal_to_binary right]

