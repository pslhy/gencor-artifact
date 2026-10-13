(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose xor value is odd. *)
let rec find_Odd_Pair (a : int list) (n : int) : int =
    match a with
    | h :: t ->
        (match t with
        | [] -> 0
        | _  -> find_Odd_Pair t (n ^^^ h) + find_Odd_Pair t (n ^^^ h))
    | [] -> if (n land 1) = 1 then 1 else 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:36: Unbound value "(^^^)" *)
(*     Hint: Did you mean "^^"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Odd_Pair (a : int list) (n : int) : int =
    match a with
    | h :: t ->
        (match t with
        | [] -> 0
        | _  -> find_Odd_Pair t (n ^ h) + find_Odd_Pair t (n ^ h))
    | [] -> if (n land 1) = 1 then 1 else 0

