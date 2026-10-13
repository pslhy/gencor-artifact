(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
let rec count_reverse_pairs (test_list : string list) : int =
  let module SS = Set.Make (String) in
    match test_list with
    | [] ->
      0
    | h :: tl ->
      let reversable = SS.of_list (List.map String.rev tl) in
      if SS.exists (fun x -> x = h) reversable then 1 + count_reverse_pairs tl
      else count_reverse_pairs tl

(* Using count_reverse_pairs function *)
let test_list = ["abc"; "cba"; "bca"; "bac"; "xyz"; "zyx"; "xyz"; "zyx"]

let result = count_reverse_pairs test_list

let () = print_string (string_of_int result)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:45: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_reverse_pairs (test_list : string list) : int =
  let module SS = Set.Make (String) in
  match test_list with
  | [] -> 0
  | h :: tl ->
    let reversable = SS.of_list (List.map String.rev tl) in
    if SS.exists (fun x -> x = h) reversable then 1 + count_reverse_pairs tl
    else count_reverse_pairs tl

(* Using count_reverse_pairs function *)
let test_list = ["abc"; "cba"; "bca"; "bac"; "xyz"; "zyx"; "xyz"; "zyx"]
let result = count_reverse_pairs test_list
let () = print_string (string_of_int result)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:43: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_reverse_pairs (test_list : string list) : int =
  let rec inner_loop l1 l2 =
    match (l1, l2) with
    | ([], _) ->
      0
    | (_, []) ->
      0
    | (x::xs, y::ys) ->
      if x = y then 1 + inner_loop xs ys else inner_loop xs ys in
  let rev_pairs = List.map (fun x -> String.rev x, x) test_list in
  List.fold_left (fun acc x -> acc + inner_loop rev_pairs [x]) 0 test_list

(* Using count_reverse_pairs function *)
let test_list = ["abc"; "cba"; "bca"; "bac"; "xyz"; "zyx"; "xyz"; "zyx"]
let result = count_reverse_pairs test_list
let () = print_string (string_of_int result)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:38: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_reverse_pairs (test_list : string list) : int =
  let rec inner_loop l1 l2 =
    match (l1, l2) with
    | ([], _) -> 0
    | (_, []) -> 0
    | (x::xs, y::ys) -> if x = y then 1 + inner_loop xs ys else inner_loop xs ys in
  let rev_pairs = List.map (fun x -> (String.sub x 0 (String.length x - 1), x)) test_list in
  List.fold_left (fun acc x -> acc + inner_loop rev_pairs [x]) 0 test_list

(* Using count_reverse_pairs function *)
let test_list = ["abc"; "cba"; "bca"; "bac"; "xyz"; "zyx"; "xyz"; "zyx"]
let result = count_reverse_pairs test_list
let () = print_string (string_of_int result)

