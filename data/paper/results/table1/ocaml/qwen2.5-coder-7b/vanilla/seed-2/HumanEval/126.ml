let rec is_sorted (lst : int list) : bool = 
  let rec check_duplicates (lst : int list) (prev : int option) (count : int) : bool =
    match lst with
    | [] -> true
    | x::xs -> 
      if prev = Some x then 
        if count + 1 > 2 then false else check_duplicates xs (Some x) (count + 1)
      else check_duplicates xs (Some x) 1
  in
  let rec check_order (lst : int list) (prev : int option) : bool =
    match lst with
    | [] -> true
    | x::xs -> 
      match prev with
      | None -> check_order xs (Some x)
      | Some p -> if x < p then false else check_order xs (Some x)
  in
  check_order lst None && check_duplicates lst None 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of numbers, return whether or not they are sorted *)
(*     in ascending order. If list has more than 1 duplicate of the same *)
(*     number, return false. Assume no negative numbers and only integers. *)
(*     Examples *)
(*     >>> is_sorted [5] *)
(*     true *)
(*     >>> is_sorted [1; 2; 3; 4; 5] *)
(*     true *)
(*     >>> is_sorted [1; 3; 2; 4; 5] *)
(*     false *)
(*     >>> is_sorted [1; 2; 3; 4; 5; 6] *)
(*     true *)
(*     >>> is_sorted [1; 2; 3; 4; 5; 6; 7] *)
(*     true *)
(*     >>> is_sorted [1; 3; 2; 4; 5; 6; 7] *)
(*     false *)
(*     >>> is_sorted [1; 2; 2; 3; 3; 4] *)
(*     true *)
(*     >>> is_sorted [1; 2; 2; 2; 3; 4] *)
(*     false *)
