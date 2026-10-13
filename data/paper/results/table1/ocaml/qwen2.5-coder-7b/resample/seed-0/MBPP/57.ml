(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest number that can be formed with the given list of digits. *)
let rec find_Max_Num (arr : int list) : int = 
  let rec sort_descending arr = 
    List.sort (fun a b -> - (compare a b)) arr in
  letsorted_arr = sort_descending arr in
  let rec concatenate_list lst = 
    match lst with
    | [] -> 0
    | [x] -> x
    | hd::tl -> hd * 10 + concatenate_list tl in
  concatenate_list sorted_arr

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:3: Unbound value "letsorted_arr" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Max_Num (arr : int list) : int = 
  let rec sort_descending arr = 
    List.sort (fun a b -> - (compare a b)) arr in
  let sorted_arr = sort_descending arr in
  let rec concatenate_list lst = 
    match lst with
    | [] -> 0
    | [x] -> x
    | hd::tl -> hd * 10 + concatenate_list tl in
  concatenate_list sorted_arr

