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


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest number that can be formed with the given list of digits. *)
