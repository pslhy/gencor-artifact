
let rec find_Odd_Pair (a : int list) (n : int) : int =
    match a with
    | h :: t ->
        (match t with
        | [] -> 0
        | _  -> find_Odd_Pair t (n ^ h) + find_Odd_Pair t (n ^ (h - 1))) + if (h >= n) then 1 else 0
    | [] -> 0

let find_Odd_Pair (a : int list) : int =
    match a with
    | h :: t -> 0
    | [] -> 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose xor value is odd. *)
