(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last digit of a given number. *)
let rec last_Digit (n : int) : int =
    match n with
    | 0 -> 0
    | n when n mod 10 = 0 -> lastDigit (n / 10)
    | _ -> n mod 10

let () =
    let input_number = read_int () in
    print_endline (string_of_int (last_Digit input_number));

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:30: Unbound value "lastDigit" *)
(*     Hint: Did you mean "last_Digit"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec last_Digit (n : int) : int =
    if n = 0 then 0
    else if n mod 10 = 0 then last_Digit (n / 10)
    else n mod 10 in
let test n =
    n = last_Digit n in
let _ =
    print_endline (string_of_bool (test 123456789)) in

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec last_Digit (n : int) : int =
    match n with
    | 0 -> 0
    | _ when n mod 10 = 0 -> last_Digit (n / 10)
    | n -> n mod 10 in
let test n =
    n = last_Digit n in

let _ =
    print_endline (string_of_bool (test 123456789)) in

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec last_Digit (n : int) : int =
  match n with
  | 0 -> 0
  | _ when n mod 10 = 0 -> last_Digit (n / 10)
  | n -> n mod 10

let test n =
  n = last_Digit n

let _ =
  print_endline (string_of_bool (test 123456789))

