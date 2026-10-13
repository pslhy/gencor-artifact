(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to extract the number of unique tuples in the given list. *)
let rec extract_freq (test_list :  (int * int) list) : int = 
    let rec helper seen acc = function
        | [] -> acc
        | (x, y)::rest -> 
            if (x, y) ∈ seen then
                helper seen acc rest
            else
                helper ((x, y)::seen) (acc + 1) rest
    in
    helper [] 0 test_list

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:24: Illegal character (\136) *)
(*     Please regenerate the code, taking these errors into account. *)
let rec extract_freq (test_list :  (int * int) list) : int = 
    let rec helper seen acc = function
        | [] -> acc
        | (x, y)::rest -> 
            if List.mem (x, y) seen then
                helper seen acc rest
            else
                helper ((x, y)::seen) (acc + 1) rest
    in
    helper [] 0 test_list

