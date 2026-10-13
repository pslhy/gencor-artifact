let rec can_arrange (arr : int list) : int =
  match arr with
  | x :: y :: tl ->
      if x <= y then can_arrange (y :: tl)
      else
        let max_index = can_arrange (y :: tl) in
        if max_index = -1 then -1 else max_index + 1
  | [x] -> -1
  | _ -> -1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Create a function which returns the largest index of an element which *)
(*     is not greater than or equal to the element immediately preceding it. If *)
(*     no such element exists then return -1. The given list will not contain *)
(*     duplicate values. *)
(*     Examples: *)
(*     >>> can_arrange [1; 2; 4; 3; 5] *)
(*     3 *)
(*     >>> can_arrange [1; 2; 3] *)
(*     (-1) *)
