let rec move_zero (num_list : int list) : int list = 
    (* base case: ignore empty list *)
    match num_list with
    | [] -> 
            []
    | head :: tail -> 
            (* base case: head is non-zero *)
            if head <> 0 then 
                head:: move_zero tail 
            (* recursion step: head is 0 *)
            else 
                move_zero tail


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to move all zeroes to the end of the given list. *)
