let rec count_X (tup : int list) (x : int) : int = 
    let count_list lst = 
        List.fold_left (fun acc y -> if y = x then acc + 1 else acc) 0 lst 
    in 
    count_list tup


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a tuple and an element and counts the occcurences of the element in the list. *)
