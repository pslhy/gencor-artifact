let rec swap_List (newList : int list) : int list =
    match newList with
    | [] -> []
    | [x] -> [x]
    | x::xs -> 
        let (rev, rest) = List.rev_split xs in 
        x::(List.rev_append rev [x])

let list1 = [1; 2; 3; 4; 5]
let list2 = swap_List list1
print_int (List.hd list2) (* prints: 5 *)
print_string " "
print_int (List.nth list2 (List.length list2 - 1) (* prints: 1 *))
print_newline ()


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to interchange the first and last elements in a list. *)
