(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of xor of all pairs of numbers in the given list. *)
let rec pair_xor_Sum (arr : int list) (n : int) : int = 
    (* base case: If list with only one element *)
    let (h :: t) : int list = arr in 
    (* if list has only one element *)
    n h :: (pair_xor_Sum t (n + 1))
in
    (* if list has only one element *)
    if List.length arr = 1 then arr.Head
    else
        (* result is the pairwise xor of each element *)
        pair_xor_Sum arr (n + 1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec pair_xor_Sum (arr : int list) (n : int) : int =
    match arr with
    | [] -> 0
    | [x] -> x
    | x :: y :: t -> x lxor y + (pair_xor_Sum t (n + 1))

let () =
    let arr = [3; 5; 2; 1; 4] in
    let result = pair_xor_Sum arr 0 in
    print_int result

