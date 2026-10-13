(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
let rec is_decimal (num : string) : bool = 
  let is_digit c = c >= '0' && c <= '9' in
  let is_dot c = c = '.' in
  let count_dots s = List.length @@ filter is_dot @@ to_list s in
  let split_on_dot s = String.split_on_char '.' s in
  let is_valid_number s = List.for_all is_digit @@ to_list s in
  if count_dots num <> 1 then false
  else let parts = split_on_dot num in
  match parts with
  | [num_part; dec_part] -> is_valid_number num_part && is_valid_number dec_part && String.length dec_part = 2
  | _ -> false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:37: Unbound value "filter" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_decimal (num : string) : bool = 
  let is_digit c = c >= '0' && c <= '9' in
  let is_dot c = c = '.' in
  let count_dots s = List.length @@filter is_dot @@ to_list s in
  let split_on_dot s = String.split_on_char '.' s in
  let is_valid_number s = List.for_all is_digit @@ to_list s in
  if count_dots num <> 1 then false
  else let parts = split_on_dot num in
  match parts with
  | [num_part; dec_part] -> is_valid_number num_part && is_valid_number dec_part && String.length dec_part = 2
  | _ -> false

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:36: Unbound value "filter" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_decimal (num : string) : bool = 
  let is_digit c = c >= '0' && c <= '9' in
  let is_dot c = c = '.' in
  let count_dots s = List.length (List.filter is_dot @@ String.to_seq @@ s) in
  let split_on_dot s = String.split_on_char '.' s in
  let is_valid_number s = List.for_all is_digit @@ String.to_seq @@ s in
  if count_dots num <> 1 then false
  else let parts = split_on_dot num in
  match parts with
  | [num_part; dec_part] -> is_valid_number num_part && is_valid_number dec_part && String.length dec_part = 2
  | _ -> false

