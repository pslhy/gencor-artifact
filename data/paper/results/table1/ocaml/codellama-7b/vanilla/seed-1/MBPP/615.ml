let rec average_tuple (nums : int list list) : float list =
  match nums with
  | [] -> []
  | (num :: nums) -> (float_of_int num) :: average_tuple nums

let make_tuple (nums : int list) : float list =
  let rec helper (nums, acc) : float list =
    match (nums, acc) with
    | ([], acc) -> acc
    | ((num :: nums), acc) -> helper (nums, acc @ [float_of_int num])
  in
  helper (nums, [])

let average_lists (num_lists : int list list) : float list =
  let rec helper (num_lists, acc) : float list =
    match (num_lists, acc) with
    | ([], acc) -> acc
    | ((nums :: num_lists), acc) -> helper (num_lists, acc @ [make_tuple nums])
  in
  helper (num_lists, [])

let main () =
  let num_lists = [[1; 2; 3]; [4; 5; 6]; [7; 8; 9]] in
  print_endline (String.concat "; " (float_list_to_string (average_lists num_lists)));;

let rec float_list_to_string (fl : float list) : string list =
  match fl with
  | [] -> []
  | (f :: fl) -> (string_of_float f) :: float_list_to_string fl

let () = main ()

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which takes a lists of lists and returns the average value for each sublist as a list. *)
