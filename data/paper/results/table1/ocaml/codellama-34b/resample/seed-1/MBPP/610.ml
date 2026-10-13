(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list and returns a list with the same elements, but the k'th element removed. *)
let rec remove_kth_element (list1 : int list) (l : int) : int list =
    let rec aux (list2 : int list) (k : int) : int list =
        match list2 with
        | [] -> []
        | hd :: tl -> if k = 1 then tl else hd :: aux tl (k - 1) in
    aux list1 l

