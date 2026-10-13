(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return true is list elements are monotonically increasing or decreasing. *)
(*     >>> monotonic [1; 2; 4; 20] *)
(*     true *)
(*     >>> monotonic [1; 20; 4; 10] *)
(*     false *)
(*     >>> monotonic [4; 1; 0; (-10)] *)
(*     true *)
let rec monotonic (l : int list) : bool = 
    match l with 
    | head :: tail -> 
        (match tail with 
        | [] -> true 
        | head' :: tail' -> if head < head' then monotonic (List.tl l) else false)
    | [] -> true

(* 
   monotonic function takes an integer list as input 
   and returns a boolean value indicating whether the list elements 
   are monotonically increasing or decreasing.
*)

