
let rec remove_kth_element (list1 : int list) (l : int) : int list = 
    let rec helper (lst : int list) (acc : int list) (n : int) : int list = 
        match lst with
        | [] -> acc
        | x :: xs -> if n = 0 then helper xs acc (n - 1) else helper xs (acc @ [x]) (n - 1)
    in
    helper list1 [] l

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list and returns a list with the same elements, but the k'th element removed. *)
