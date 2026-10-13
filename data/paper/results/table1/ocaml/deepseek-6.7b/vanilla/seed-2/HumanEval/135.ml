let rec can_arrange (arr : int list) : int =
  let rec loop i cur maxi =
    if i < 0 then maxi
    else
      if arr.[i] < cur then loop (i - 1) arr.[i] i
      else loop (i - 1) arr.[i] maxi
  in
  let max_index = List.length arr - 1 in
  let result = loop (max_index - 1) arr.[max_index] max_index in
  if result = max_index then -1 else result


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
