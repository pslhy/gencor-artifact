
let rec unique_digits (x : int list) : int list = 
    (* base case: if x is empty return empty list *)
    match x with 
    | [] -> [] 
    | h::t -> 
    (* if h doesn't have an even digit, add it to the resulting list *)
    if not(List.exists ((fun x -> x mod 2 = 0), h)) then
        h::unique_digits t 
    else
        unique_digits t

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of positive integers x. return a sorted list of all *)
(*     elements that hasn't any even digit. *)
(*     Note: Returned list should be sorted in increasing order. *)
(*     For example: *)
(*     >>> unique_digits [15; 33; 1422; 1] *)
(*     [1; 15; 33] *)
(*     >>> unique_digits [152; 323; 1422; 10] *)
(*     [] *)
