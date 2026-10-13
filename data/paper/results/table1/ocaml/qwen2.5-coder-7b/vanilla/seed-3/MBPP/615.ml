let rec average_tuple (nums : int list list) : float list = 
  let sum_list lst = List.fold_left (+) 0 lst in
  let length_list lst = List.length lst in
  let rec helper lst acc = match lst with
    | [] -> List.rev acc
    | h :: t -> helper t ((float (sum_list h)) /. (float (length_list h))) :: acc
  in helper nums []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which takes a lists of lists and returns the average value for each sublist as a list. *)
