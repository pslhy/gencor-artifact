let rec count_X (tup : int list) (x : int) : int =
    match tup with
    | [] -> 0
    | [y] -> if y = x then 1 else 0
    | y::ys ->
        if y = x then 1 + count_X ys x
        else count_X ys x


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a tuple and an element and counts the occcurences of the element in the list. *)
