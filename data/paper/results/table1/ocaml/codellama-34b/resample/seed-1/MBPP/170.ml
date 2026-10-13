(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the sum of numbers in a list within a range specified by two indices. *)
let rec sum_range_list (list1 : int list) (m : int) (n : int) : int =
    let rec aux (list2 : int list) (index : int) : int =
        match list2 with
        | [] -> 0
        | hd :: tl -> if index >= m && index <= n then hd + aux tl (index + 1) else aux tl (index + 1)
    in
    aux list1 0

