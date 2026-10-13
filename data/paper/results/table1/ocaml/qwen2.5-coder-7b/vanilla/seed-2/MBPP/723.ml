let rec count_same_pair (nums1 : int list) (nums2 : int list) : int = 
    let rec helper lst1 lst2 count = 
        match (lst1, lst2) with 
        | ([], []) -> count 
        | (x::xs, y::ys) -> if x = y then helper xs ys (count + 1) else helper xs ys count 
        | _ -> raise (Invalid_argument "lists must be of the same length") 
    in helper nums1 nums2 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     The input is defined as two lists of the same length. Write a function to count indices where the lists have the same values. *)
