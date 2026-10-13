(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Input is a space-delimited string of numberals from 'zero' to 'nine'. *)
(*     Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'. *)
(*     Return the string with numbers sorted from smallest to largest *)
(*     >>> sort_numbers "three one five" *)
(*     "one three five" *)
let rec sort_numbers (numbers : string) : string =
    let num_list = Str.split (Str.regexp " ") numbers in
    let num_dict = ["one", 1; "two", 2; "three", 3; "four", 4; "five", 5; "six", 6; "seven", 7; "eight", 8; "nine", 9]
    in
    let num_sort (a, _) (b, _) = compare a b in
    let sorted_num_list = List.sort num_sort (List.map (fun x -> List.assoc x num_dict) num_list) in
    List.fold_left (fun a b -> a ^ " " ^ (List.assoc_default b (List.combine sorted_num_list num_dict) "")) "" sorted_num_list

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:20: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_numbers (numbers : string) : string =
    let num_list = String.split_on_char ' ' numbers in
    let num_dict = ["one", 1; "two", 2; "three", 3; "four", 4; "five", 5; "six", 6; "seven", 7; "eight", 8; "nine", 9]
    in
    let num_sort (a, _) (b, _) = compare a b in
    let sorted_num_list = List.sort num_sort (List.map (fun x -> List.assoc x num_dict) num_list) in
    List.fold_left (fun a b -> a ^ " " ^ (List.assoc_default b (List.combine sorted_num_list num_dict) "")) "" sorted_num_list

