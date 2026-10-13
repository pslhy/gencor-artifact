(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
  let rec divisible_by_digits_helper (num : int) (digit_list : int list) : bool =
    match digit_list with
    | [] -> true
    | h::t -> if num mod h = 0 then divisible_by_digits_helper num t
               else false
  in
  let rec range_helper (startnum : int) (endnum : int) (acc : int list) : int list =
    if startnum > endnum then acc
    else range_helper startnum (endnum - 1) (if divisible_by_digits_helper startnum (List.rev (String.to_list (string_of_int startnum))) then acc @ [startnum] else acc)
  in
  range_helper startnum endnum []
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:96: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
  let rec divisible_by_digits_helper (num : int) (digit_list : int list) : bool =
    match digit_list with
    | [] -> true
    | h::t -> if num mod h = 0 then divisible_by_digits_helper num t
               else false
  in
  let rec range_helper (startnum : int) (endnum : int) (acc : int list) : int list =
    if startnum > endnum then acc
    else range_helper startnum (endnum - 1) (if divisible_by_digits_helper startnum (List.rev (int_to_digits startnum)) then acc @ [startnum] else acc)
  in
  let rec int_to_digits (n : int) : int list =
    if n = 0 then []
    else n mod 10 :: int_to_digits (n / 10)
  in
  range_helper startnum endnum []
;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:96: Unbound value "int_to_digits" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
  let rec divisible_by_digits_helper (num : int) (digit_list : int list) : bool =
    match digit_list with
    | [] -> true
    | h::t -> if h <> 0 && num mod h <> 0 then false
               else divisible_by_digits_helper num t
  in
  let rec range_helper (startnum : int) (endnum : int) (acc : int list) : int list =
    if startnum > endnum then acc
    else let num_digits = List.rev (int_to_digits startnum) in
        range_helper (startnum + 1) endnum (if divisible_by_digits_helper startnum num_digits then acc @ [startnum] else acc)
  in
  let rec int_to_digits (n : int) : int list =
    if n = 0 then []
    else n mod 10 :: int_to_digits (n / 10)
  in
  range_helper startnum endnum []
;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:37: Unbound value "int_to_digits" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
  let rec divisible_by_digits_helper (num : int) (digit_list : int list) : bool =
    match digit_list with
    | [] -> true
    | h::t -> if h <> 0 && num mod h <> 0 then false
               else divisible_by_digits_helper num t
  in
  let rec range_helper (startnum : int) (endnum : int) (acc : int list) : int list =
    if startnum > endnum then acc
    else let num_digits = List.rev (int_to_digits startnum) in
        range_helper (startnum + 1) endnum (if divisible_by_digits_helper startnum num_digits then acc @ [startnum] else acc)
  in
  let rec int_to_digits (n : int) : int list =
    if n = 0 then []
    else n mod 10 :: int_to_digits (n / 10)
  in
  range_helper startnum endnum []
;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:37: Unbound value "int_to_digits" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
  let rec divisible_by_digits_helper (num : int) (digit_list : int list) : bool =
    match digit_list with
    | [] -> true
    | h::t -> if h <> 0 && num mod h <> 0 then false
               else divisible_by_digits_helper num t
  in
  let rec range_helper (startnum : int) (endnum : int) (acc : int list) : int list =
    if startnum > endnum then acc
    else let num_digits = List.rev (int_to_digits startnum) in
        range_helper (startnum + 1) endnum (if divisible_by_digits_helper startnum num_digits then acc @ [startnum] else acc)
  in
  let rec int_to_digits (n : int) : int list =
    if n = 0 then []
    else n mod 10 :: int_to_digits (n / 10)
  in
  range_helper startnum endnum []
;;

