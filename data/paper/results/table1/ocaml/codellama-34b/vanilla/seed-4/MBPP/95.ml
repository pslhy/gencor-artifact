let rec find_Min_Length (lst : int list list) : int = 
    (* base case: if only one sublist, return its length *)
    if List.length lst = 1 then List.length (List.hd lst)
    else 
        (* else, find the min length of the rest of the sublists *)
        let min_Length = find_Min_Length (List.tl lst) in
        (* return min of current sublist and min of rest of sublists *)
        min min_Length (List.length (List.hd lst))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the length of the smallest list in a list of lists. *)
