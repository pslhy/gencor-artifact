(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether any value in a sequence exists in a sequence or not. *)
let rec overlapping (list1 : int list) (list2 : int list) : bool = 
    (* base case: if any of the list is empty, return false *)
    if list1 = [] || list2 = [] then false 
    else 
        (* get the head of both lists *)
        let list1Head = List.hd list1 in
        let list2Head = List.hd list2 in 
        (* if the heads are equal, return true *)
        if list1Head = list2Head then true 
        (* if list1Head exists in list2, return true *)
        else if List.mem list1Head list2 then true 
        (* if list2Head exists in list1, return true *)
        else if List.mem list2Head list1 then true 
        (* recursively check the rest of the lists *)
        else overlapping (List.tl list1) (List.tl list2)

