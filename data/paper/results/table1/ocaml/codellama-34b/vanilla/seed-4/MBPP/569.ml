let rec sort_sublists (list1 : string list list) : string list list = 
    (* base case: if the list is empty, return an empty list *)
    if list1 = [] then []
    else
        (* rec case: sort each sublist using the sort function from the OCaml standard library *)
        let sorted_sublists = List.map (fun (sublist : string list) -> List.sort compare sublist) list1 in
        sorted_sublists @ sort_sublists (List.tl list1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort each sublist of strings in a given list of lists. *)
