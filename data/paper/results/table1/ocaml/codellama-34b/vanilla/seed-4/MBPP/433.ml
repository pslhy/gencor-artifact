let rec check_greater (arr : int list) (number : int) : bool = 
    (* base case: if the list is empty, return true *)
    match arr with
    | [] -> true
    | head :: tail -> 
        (* check if the number is greater than the head of list *)
        if number > head then
            check_greater tail number
        else
            false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the entered number is greater than the elements of the given list. *)
