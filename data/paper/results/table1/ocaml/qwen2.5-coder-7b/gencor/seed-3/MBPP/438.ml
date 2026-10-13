
let rec count_bidirectional (test_list :  (int * int) list) : int = 
    let rec helper seen pairs = function
        | [] -> pairs
        | (x, y) :: tl ->
            if List.mem (y, x) seen then
                helper ((x, y) :: seen) (pairs + 1) tl
            else
                helper ((x, y) :: seen) pairs tl
    in helper [] 0 test_list

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count bidirectional tuple pairs. *)
