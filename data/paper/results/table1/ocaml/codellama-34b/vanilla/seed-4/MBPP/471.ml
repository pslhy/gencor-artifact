let rec find_remainder (arr : int list) (n : int) : int = 
    (* base case: if list is empty return 1 *)
    match arr with 
    | [] -> 1 
    (* recursive case: otherwise, accumulate product of n *)
    | hd :: tl -> (hd * find_remainder tl n) 
    (* recursion step: decrease n by 1 on each recursion *)
    | _ -> find_remainder arr (n-1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the product of the list multiplication modulo n. *)
