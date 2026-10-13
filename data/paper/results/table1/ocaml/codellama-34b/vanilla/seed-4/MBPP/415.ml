let rec max_Product (arr : int list) :  int * int = 
    (* base case: if list with only one element *)
    let (h, t) = 
        match arr with 
        | [] -> raise Not_found
        | h :: [] -> (h, [])
        | h :: t -> (h, t) in 
    (* recursion step: find the maximum pairwise product *)
    let (m, n) = max_Product h t in 
    if h *n = n * m then 
        (h, t) else
        (m, n)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find a pair with highest product from a given list of integers. *)
