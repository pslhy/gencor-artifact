(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count bidirectional tuple pairs. *)
let rec count_bidirectional (test_list :  (int * int) list) : int = 
    let rec helper seen pairs = function
        | [] -> pairs
        | (x, y) :: tl ->
            if List mem (y, x) seen || List mem (y, x) pairs then
                helper ((y, x) :: seen) pairs tl
            else
                helper ((y, x) :: seen) ((x, y) :: pairs) tl
    in 
    List length (helper [] [] test_list)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:25: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_bidirectional (test_list :  (int * int) list) : int = 
    let rec helper seen pairs = function
        | [] -> pairs
        | (x, y) :: tl ->
            if List.mem (y, x) seen || List.mem (y, x) pairs then
                helper ((y, x) :: seen) pairs tl
            else
                helper ((y, x) :: seen) ((x, y) :: pairs) tl
    in 
    List.length (helper [] [] test_list)

