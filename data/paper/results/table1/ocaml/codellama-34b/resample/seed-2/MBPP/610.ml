(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list and returns a list with the same elements, but the k'th element removed. *)
let rec remove_kth_element (list1 : int list) (l : int) : int list =
    match list1 with
    | [] -> []
    | (x::xs) ->
        if x = l then
            remove_kth_element xs l
        else
            x::remove_kth_element xs l

