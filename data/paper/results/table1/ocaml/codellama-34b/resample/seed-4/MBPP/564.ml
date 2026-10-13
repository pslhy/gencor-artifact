(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list of integers and counts the number of possible unordered pairs where both elements are unequal. *)
let rec count_Pairs (arr : int list) (n : int) : int = 
    (* base case: ignore if size <= 2 *)
    let size = List.length arr in
    if size <= 2 then 0 
    (* base case: return 1 if size = 3 *)
    else if size = 3 then 1 
    (* general case: recursion + combination formula *) 
    else List.length (count_Pairs (List.filter (fun x -> x != n) arr) (n+1));;

