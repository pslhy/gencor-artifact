(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function which sorts the given list of integers *)
(*     in ascending order according to the sum of their digits. *)
(*     Note: if there are several items with similar sum of their digits, *)
(*     order them based on their index in original list. *)
(*     For example: *)
(*     >>> order_by_points [1; 11; (-1); (-11); (-12)] *)
(*     [(-1); (-11); 1; (-12); 11] *)
(*     >>> order_by_points [] *)
(*     [] *)
let rec order_by_points (nums : int list) : int list = 
  let digit_sum n = 
    let str = string_of_int (abs n) in
    List.fold_left (fun acc d -> acc + (Char.code d - Char.code '0')) 0 (Str.chars str) in
  List.mapi (fun i x -> (i, x, digit_sum x)) nums
  |> List.sort compare
  |> List.map (fun (_, x, _) -> x)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:74: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec order_by_points (nums : int list) : int list = 
  let digit_sum n = 
    let str = string_of_int (abs n) in
    List.fold_left (fun acc d -> acc + (Char.code d - Char.code '0')) 0 (str |> Seq.of_string |> Seq.to_list) in
  List.mapi (fun i x -> (i, x, digit_sum x)) nums
  |> List.sort compare
  |> List.map (fun (_, x, _) -> x)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:98: Unbound value "Seq.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec order_by_points (nums : int list) : int list = 
  let digit_sum n = 
    let str = string_of_int (abs n) in
    List.fold_left (fun acc d -> acc + (Char.code d - Char.code '0')) 0 (Str.split (Str.regexp "") str |> List.filter (fun s -> s <> "")) in
  List.mapi (fun i x -> (i, x, digit_sum x)) nums
  |> List.sort compare
  |> List.map (fun (_, x, _) -> x)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:74: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec order_by_points (nums : int list) : int list = 
  let digit_sum n = 
    let str = string_of_int (abs n) in
    List.fold_left (fun acc d -> acc + (Char.code d - Char.code '0')) 0 (String.to_seq str |> Seq.to_list) in
  List.mapi (fun i x -> (i, x, digit_sum x)) nums
  |> List.sort compare
  |> List.map (fun (_, x, _) -> x)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:95: Unbound value "Seq.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec order_by_points (nums : int list) : int list = 
  let digit_sum n = 
    let str = string_of_int (abs n) in
    let sum = ref 0 in
    str |> String.iter (fun d -> sum := !sum + (Char.code d - Char.code '0'));
    !sum in
  List.mapi (fun i x -> (i, x, digit_sum x)) nums
  |> List.sort compare
  |> List.map (fun (_, x, _) -> x)

