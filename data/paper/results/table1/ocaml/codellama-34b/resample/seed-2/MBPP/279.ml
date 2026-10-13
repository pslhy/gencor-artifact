(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the nth decagonal number. *)
let rec is_num_decagonal (n : int) : int =
    match n with
    | 1 -> 1
    | n when n > 1 -> is_num_decagonal (n - 1) + 10
    | _ -> raise Invalid_argument "n must be positive"

let find_nth_decagonal (n : int) : int = if n <= 0 then raise Invalid_argument "n must be positive" else is_num_decagonal n

