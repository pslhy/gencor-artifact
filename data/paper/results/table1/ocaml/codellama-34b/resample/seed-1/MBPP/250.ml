(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a tuple and an element and counts the occcurences of the element in the list. *)
let rec count_X (tup : int list) (x : int) : int =
    let acc = 0 in
    let rec loop tup =
        match tup with
        | [] -> acc
        | [y] -> if y = x then acc + 1 else acc
        | y :: ys -> if y = x then loop (ys + 1) else loop ys
    in
    loop tup

