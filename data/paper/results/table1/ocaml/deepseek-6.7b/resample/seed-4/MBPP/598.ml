(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
let rec armstrong_number (number : int) : bool =
  let num_str = string_of_int number in
  let len = String.length num_str in
  number = List.fold_left (fun acc curr -> acc + pow curr len) 0 (List.init len (fun _ -> int_of_string_of_char num_str))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:50: Unbound value "pow" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec armstrong_number (number : int) : bool =
  let num_str = string_of_int number in
  let len = String.length num_str in
  number = List.fold_left (fun acc curr -> acc + (int_of_string (String.make 1 curr)) ** len) 0 (String.to_list num_str)

let (**) x y =
  let rec loop acc x y =
    if y = 0 then acc
    else loop (acc * x) x (y - 1)
  in
  loop 1 x y

