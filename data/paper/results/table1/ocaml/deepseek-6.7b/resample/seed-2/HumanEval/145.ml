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
  let sum_digits n =
    abs n
    |> string_of_int
    |> String.to_list
    |> List.map (String.of_char >> int_of_string)
    |> List.fold_left (+) 0
  in
  let avg_list = List.map (fun n -> (n, sum_digits n, List.index_of n nums)) nums in
  avg_list
  |> List.sort (fun (_, a, _) (_, b, _) -> compare a b)
  |> List.map (fun (n, _, _) -> n)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:33: Unbound value "(>>)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec order_by_points (nums : int list) : int list =
  let sum_digits n =
    abs n
    |> string_of_int
    |> String.to_list
    |> List.map (String.of_char >> int_of_string)
    |> List.fold_left (+) 0
  in
  let avg_list = List.map (fun n -> (n, sum_digits n, List.map nums ~f:(fun e -> (e, n)) |> List.index_of n)) nums in
  avg_list
  |> List.sort (fun (_, a, _) (_, b, _) -> compare a b)
  |> List.map (fun (n, _, _) -> n)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:33: Unbound value "(>>)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec order_by_points (nums : int list) : int list =
  let sum_digits n =
    abs n
    |> string_of_int
    |> String.to_list
    |> List.map (String.of_char >> int_of_string)
    |> List.fold_left (+) 0
  in
  let avg_list = List.map (fun n -> (n, sum_digits n, List.find_idx nums ~f:(=) n)) nums in
  avg_list
  |> List.sort (fun (_, a, _) (_, b, _) -> compare a b)
  |> List.map (fun (n, _, _) -> n)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:33: Unbound value "(>>)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec order_by_points (nums : int list) : int list =
  let sum_digits n =
    abs n
    |> string_of_int
    |> String.to_list
    |> List.map (String.of_char >> int_of_string)
    |> List.fold_left (+) 0
  in
  let avg_list = List.filter_map nums ~f:(fun n ->
    let idx = List.find_idx nums ~f:(=) n in
    Some (n, sum_digits n, idx)
  ) in
  List.sort ~compare:(fun (_, a, _) (_, b, _) -> compare a b) avg_list
  |> List.map ~f:(fun (n, _, _) -> n)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:33: Unbound value "(>>)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec order_by_points (nums : int list) : int list =
  let sum_digits n =
    let rec sum_digits_helper n acc =
      if n = 0 then acc
      else sum_digits_helper (n / 10) (acc + (n mod 10))
    in
    sum_digits_helper (abs n) 0
  in
  List.sort_unstable ~compare:(fun (a, _) (b, _) -> compare (sum_digits a) (sum_digits b)) nums
  |> List.map ~f:(fun (n, _) -> n)

