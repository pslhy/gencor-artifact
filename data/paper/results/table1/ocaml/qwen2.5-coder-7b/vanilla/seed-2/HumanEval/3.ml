let rec below_zero (operations : int list) : bool = 
  let rec helper balance ops = 
    match ops with
    | [] -> balance >= 0
    | x::xs -> 
        let new_balance = balance + x in
        if new_balance < 0 then true else helper new_balance xs
  in
  helper 0 operations


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You're given a list of deposit and withdrawal operations on a bank account that starts with *)
(*     zero balance. Your task is to detect if at any point the balance of account fallls below zero, and *)
(*     at that point function should return true. Otherwise it should return false. *)
(*     >>> below_zero [1; 2; 3] *)
(*     false *)
(*     >>> below_zero [1; 2; (-4); 5] *)
(*     true *)
