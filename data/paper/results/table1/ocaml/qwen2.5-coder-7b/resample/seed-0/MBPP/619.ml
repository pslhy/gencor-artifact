(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
let rec move_num (test_str : string) : string = 
  let is_num c = Char.isdigit c in
  let filter_num s = List.filter is_num (String.to_list s) in
  let filter_non_num s = List.filter (not �� is_num) (String.to_list s) in
  let nums = filter_num test_str in
  let others = filter_non_num test_str in
  String.concat "" others ^ String.concat "" (List.map (Char.escaped) nums)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:44: Illegal character (\191) *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string = 
  let is_num c = Char.isdigit c in
  let filter_num s = List.filter is_num (String.to_list s) in
  let filter_non_num s = List.filter (fun c -> not (is_num c)) (String.to_list s) in
  let nums = filter_num test_str in
  let others = filter_non_num test_str in
  String.concat "" others ^ String.concat "" (List.map (Char.escaped) nums)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:18: Unbound value "Char.isdigit" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string = 
  let is_num c = (Char.code c >= 48 && Char.code c <= 57) in
  let filter_num s = List.filter is_num (String.to_list s) in
  let filter_non_num s = List.filter (fun c -> not (is_num c)) (String.to_list s) in
  let nums = filter_num test_str in
  let others = filter_non_num test_str in
  String.concat "" others ^ String.concat "" (List.map (Char.escaped) nums)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:42: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string = 
  let is_num c = (Char.code c >= 48 && Char.code c <= 57) in
  let filter_num s = List.filter is_num (Str.string_to_list s) in
  let filter_non_num s = List.filter (fun c -> not (is_num c)) (Str.string_to_list s) in
  let nums = filter_num test_str in
  let others = filter_non_num test_str in
  String.concat "" others ^ String.concat "" (List.map (Char.escaped) nums)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:42: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string = 
  let is_num c = (Char.code c >= 48 && Char.code c <= 57) in
  let filter_num s = List.filter is_num (String.to_list s) in
  let filter_non_num s = List.filter (fun c -> not (is_num c)) (String.to_list s) in
  let nums = filter_num test_str in
  let others = filter_non_num test_str in
  String.concat "" others ^ String.concat "" (List.map (Char.escaped) nums)

