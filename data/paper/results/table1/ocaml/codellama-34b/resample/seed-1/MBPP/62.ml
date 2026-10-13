(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find smallest number in a list. *)
let rec smallest_num (xs : int list) : int =
    match xs with
    | [] -> None
    | x :: _ -> Some x
    | x :: y :: _ -> 
        if x < y then smallest_num (y :: xs)
        else smallest_num (x :: xs)

