(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in an association list and integer n and filters the association list to only include entries with values greater than or equal to n. *)
let rec dict_filter (dict : (string * int) list) (n : int) : (string * int) list =
  match dict with
  | [] -> []
  | (key, value) :: tail -> if value >= n then (key, value) :: dict_filter tail n else dict_filter tail n

let _ =
  let list = [("a", 5); ("b", 2); ("c", 9); ("d", 4)] in
  print_endline (string_of_alist (dict_filter list 5))

and string_of_alist list =
  list
  |> List.map (fun (key, value) -> key ^ ": " ^ string_of_int value)
  |> String.concat "; "

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:18: Unbound value "string_of_alist" *)
(*     Hint: Did you mean "string_of_float" or "string_of_int"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec dict_filter (dict : (string * int) list) (n : int) : (string * int) list =
  match dict with
  | [] -> []
  | (key, value) :: tail -> if value >= n then (key, value) :: dict_filter tail n else dict_filter tail n

let list = [("a", 5); ("b", 2); ("c", 9); ("d", 4)]

let _ =
  let my_list = dict_filter list 5 in
  print_endline (string_of_float my_list)

