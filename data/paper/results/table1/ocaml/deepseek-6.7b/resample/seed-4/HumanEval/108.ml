(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function count_nums which takes a list of integers and returns *)
(*     the number of elements which has a sum of digits > 0. *)
(*     If a number is negative, then its first signed digit will be negative: *)
(*     e.g. -123 has signed digits -1, 2, and 3. *)
(*     >>> count_nums [] *)
(*     0 *)
(*     >>> count_nums [(-1); 11; (-11)] *)
(*     1 *)
(*     >>> count_nums [1; 1; 2] *)
(*     3 *)
let rec count_nums (arr : int list) : int =
  match arr with
  |[] -> 0
  |x::xs -> if (abs (String.to_int "0" + (String.to_int (String.concat "" (List.map (String.split_on_char ' ' (string_of_int x)) ""))))) > 0 then 1 else 0 + count_nums xs

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:22: Unbound value "String.to_int" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_nums (arr : int list) : int =
  match arr with
  |[] -> 0
  |x::xs -> if (abs (0 + (List.fold_left (+) 0 (List.map (fun c -> int_of_string (String.make 1 c)) (String.split "" (string_of_int x)))))) > 0 then 1 else 0 + count_nums xs

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:102: Unbound value "String.split" *)
(*     Hint: Did you mean "blit"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_nums (arr : int list) : int =
  match arr with
  | [] -> 0
  | x::xs -> if (abs (0 + (List.fold_left (+) 0 (List.map (fun c -> int_of_string (String.make 1 c)) (String.split "" (string_of_int x)))))) > 0 then 1 else 0 + count_nums xs

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:103: Unbound value "String.split" *)
(*     Hint: Did you mean "blit"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_nums (arr : int list) : int =
  match arr with
  |[] -> 0
  |x::xs -> if (abs (0 + (List.fold_left (+) 0 (List.map (fun c -> int_of_string (String.of_char c)) (String.to_list (string_of_int x)))))) > 0 then 1 else 0 + count_nums xs

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:83: Unbound value "String.of_char" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_nums (arr : int list) : int =
  match arr with
  |[] -> 0
  |x::xs -> if (abs (0 + (List.fold_left (+) 0 (List.map (fun c -> int_of_string (String.make 1 c)) (String.to_list (string_of_int x)))))) > 0 then 1 else 0 + count_nums xs

