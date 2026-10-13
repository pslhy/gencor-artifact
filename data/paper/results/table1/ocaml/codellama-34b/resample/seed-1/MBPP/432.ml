(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the median length of a trapezium. *)
let rec median_trapezium (base1 : int) (base2 : int) (height : int) : float =
    let average x y =
        let sum = x + y in
        sum /. 2.0
    in
    let half_base1 = average base1 base2 in
    (height /. 2) + half_base1

