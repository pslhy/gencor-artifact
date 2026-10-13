(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You're given a list of deposit and withdrawal operations on a bank account that starts with *)
(*     zero balance. Your task is to detect if at any point the balance of account fallls below zero, and *)
(*     at that point function should return true. Otherwise it should return false. *)
(*     >>> below_zero [1; 2; 3] *)
(*     false *)
(*     >>> below_zero [1; 2; (-4); 5] *)
(*     true *)
let rec below_zero (operations : int list) : bool = 
    (* base case: if the list is empty, there is no negative balance *)
    if operations = [] then false
    else
        (* rec case: get the head of the list, which is the current operation *)
        let current = List.hd operations in
        (* check if the balance of the account falls below zero after the current operation *)
        if current < 0 then true
        else
            (* get the rest of the list, which represents the future operations, and repeat the process *)
            below_zero (List.tl operations)

