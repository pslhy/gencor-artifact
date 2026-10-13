let rec big_diff (nums : int list) : int =
  let rec aux xs acc_min acc_max =
    match xs with
    | [] -> (acc_max, acc_min)
    | h::t -> 
    let acc_max' = if h > acc_max then h else acc_max in
    let acc_min' = if h < acc_min then h else acc_min in
    aux t acc_min' acc_max'
  in
  let (max_val, min_val) = aux nums (List.hd nums) (List.hd nums) in
  max_val - min_val


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between largest and smallest value in a given list. *)
