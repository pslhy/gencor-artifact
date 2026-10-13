let rec test_duplicate (arraynums : int list) : bool = 
  let rec helper seen = function
    | [] -> false
    | x::xs -> if List.mem x seen then true else helper (x::seen) xs
  in helper [] arraynums ;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find whether a given list of integers contains any duplicate element. *)
