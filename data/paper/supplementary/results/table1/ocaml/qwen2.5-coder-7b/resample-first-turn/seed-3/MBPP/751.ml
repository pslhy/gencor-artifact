let rec check_min_heap (arr : int list) : bool = 
  let rec helper (index : int) : bool =
    if index >= Array.length (List.to_array arr) / 2 then true
    else
      let leftChildIndex = index * 2 + 1 in
      let rightChildIndex = index * 2 + 2 in
      if leftChildIndex < Array.length (List.to_array arr) &&
         arr.(index) > arr.(leftChildIndex) ||
         rightChildIndex < Array.length (List.to_array arr) &&
         arr.(index) > arr.(rightChildIndex) then false
      else helper (index + 1)
  in
  if List.length arr = 0 then true else helper 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
