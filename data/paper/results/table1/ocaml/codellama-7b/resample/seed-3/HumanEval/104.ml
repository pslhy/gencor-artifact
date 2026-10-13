(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a list of positive integers x. return a sorted list of all *)
(*     elements that hasn't any even digit. *)
(*     Note: Returned list should be sorted in increasing order. *)
(*     For example: *)
(*     >>> unique_digits [15; 33; 1422; 1] *)
(*     [1; 15; 33] *)
(*     >>> unique_digits [152; 323; 1422; 10] *)
(*     [] *)
let rec unique_digits (x : int list) : int list =
  match x with
  | [] -> []
  | x :: xs ->
    let x_digits = digits x in
    let is_even_digit (d : int) = d mod 2 = 0 in
    let even_digits = List.filter is_even_digit x_digits in
    let filtered_digits = List.filter (fun d -> not (List.mem d even_digits)) x_digits in
    let sorted_filtered_digits = List.sort compare filtered_digits in
    sorted_filtered_digits @ unique_digits xs

let digits (n : int) : int list =
  let rec digits_aux (n : int) (digits : int list) =
    if n = 0 then digits
    else digits_aux (n / 10) (n mod 10 :: digits)
  in
  digits_aux n []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:20: Unbound value "digits" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec unique_digits (x : int list) : int list =
  match x with
  | [] -> []
  | x :: xs ->
    let x_digits = digits x in
    let is_even_digit (d : int) = d mod 2 = 0 in
    let even_digits = List.filter is_even_digit x_digits in
    let filtered_digits = List.filter (fun d -> not (List.mem d even_digits)) x_digits in
    let sorted_filtered_digits = List.sort compare filtered_digits in
    sorted_filtered_digits @ unique_digits xs

and digits (n : int) : int list =
  let rec digits_aux (n : int) (digits : int list) : int list =
    if n = 0 then digits
    else digits_aux (n / 10) (n mod 10 :: digits)
  in
  digits_aux n []

