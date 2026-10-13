(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the ration of positive numbers in a list of integers. *)
let rec positive_count (nums : int list) : float = 
  let count_helper (nums: int list) (count: int) : int =
    match nums with
    | [] -> count
    | x::xs when x > 0 -> count_helper xs (count + 1)
    | _::xs -> count_helper xs count
  in
  let total_count = List.length nums in
  if total_count = 0 then 0.0 else 
  let positive_nums = count_helper nums 0 in
  (float positive_nums) /. (float total_count)
``
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:2: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec positive_count (nums : int list) : float = 
  let count_helper (nums: int list) (count: int) : int =
    match nums with
    | [] -> count
    | x::xs when x > 0 -> count_helper xs (count + 1)
    | _::xs -> count_helper xs count
  in
  let total_count = List.length nums in
  if total_count = 0 then 0.0 else 
  let positive_nums = count_helper nums 0 in
  (float positive_nums) /. (float total_count)
``
(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:2: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec positive_count (nums : int list) : float = 
  let count_helper (nums : int list) (count : int) : int =
    match nums with
    | [] -> count
    | x::xs when x > 0 -> count_helper xs (count + 1)
    | _::xs -> count_helper xs count
  in
  let total_count = List.length nums in
  if total_count = 0 then 0.0 else 
  let positive_nums = count_helper nums 0 in
  (float positive_nums) /. (float total_count)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:27: Unbound value "count_helper" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 2 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec positive_count (nums : int list) : float = 
  let rec count_helper (nums : int list) (count : int) : int =
    match nums with
    | [] -> count
    | x::xs when x > 0 -> count_helper xs (count + 1)
    | _::xs -> count_helper xs count
  in
  let total_count = List.length nums in
  if total_count = 0 then 0.0 else 
  let positive_nums = count_helper nums 0 in
  (float positive_nums) /. (float total_count)

