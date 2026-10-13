let rec frequency_lists (list1 : int list list) : (int * int) list =
  let rec flatten (list2 : int list list) : int list =
    match list2 with
    | [] -> []
    | hd::tl -> hd @ flatten tl in
  let rec count (n : int) (list3 : int list) : int list =
    match list3 with
    | [] -> []
    | hd::tl when hd = n -> (n + 1)::(count n tl)
    | hd::tl -> (count n tl) in
  let flat_list = flatten list1 in
  let rec frequencies (list4 : int list) : (int * int) list =
    match list4 with
    | [] -> []
    | hd::tl -> (hd, List.length(count hd list4))::(frequencies tl) in
  frequencies flat_list;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find frequency of each element in a flattened list of lists, returned in an association list. *)
