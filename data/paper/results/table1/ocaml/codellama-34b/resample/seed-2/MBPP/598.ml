(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
let rec armstrong_number (number : int) : bool =
    let num_digits = string_of_int number |> String.length in
    let rec helper num acc =
        if num = 0 then acc
        else helper (num / 10) (acc + (num % 10) ** num_digits)
    in
    number = helper number 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:44: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec armstrong_number (number : int) : bool =
    let num_digits = string_of_int number |> String.length in
    let rec helper num acc =
        if num = 0 then acc
        else helper (num / 10) (acc + (num % 10) * (num % 10))
    in
    number = helper number 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:44: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec armstrong_number (number : int) : bool =
    let num_digits = string_of_int number |> String.length in
    let rec helper num acc =
        if num = 0 then acc
        else helper (num / 10) (acc + (num % 10) * (num % 10))
    in
    number = helper number 0

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:44: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec armstrong_number (number : int) : bool =
    let num_digits = string_of_int number |> String.length in
    let rec helper num acc =
        if num = 0 then acc
        else helper (num / 10) (acc + (num % 10) * (num % 10))
    in
    helper number 0 = number

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:44: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec armstrong_number (number : int) : bool =
    let num_digits = string_of_int number |> String.length in
    let rec helper num acc =
        if num = 0 then acc
        else helper (num / 10) (acc + (num % 10) * (num % 10))
    in
    helper number 0 = number

