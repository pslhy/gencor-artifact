let rec find_First_Missing (array : int list) : int = 
    match array with 
    | head :: tail -> 
        if head = 1 then 
            find_First_Missing tail 
        else if head = 0 then 
            1 
        else 
            head - 1 
    | [] -> 
        1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the smallest missing number from a sorted list of natural numbers. *)
