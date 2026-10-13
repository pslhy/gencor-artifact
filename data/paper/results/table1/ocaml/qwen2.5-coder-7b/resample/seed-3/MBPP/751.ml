(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:31: Unbound value "List.to_array" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_min_heap (arr : int list) : bool = 
  let rec helper (index : int) : bool =
    if index >= List.length arr / 2 then true
    else
      let leftChildIndex = index * 2 + 1 in
      let rightChildIndex = index * 2 + 2 in
      if leftChildIndex < List.length arr &&
         arr.(index) > List.nth arr leftChildIndex ||
         rightChildIndex < List.length arr &&
         arr.(index) > List.nth arr rightChildIndex then false
      else helper (index + 1)
  in
  if List.length arr = 0 then true else helper 0

