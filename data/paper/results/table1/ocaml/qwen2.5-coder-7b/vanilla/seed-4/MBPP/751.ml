let rec check_min_heap (arr : int list) : bool = 
  let rec helper index length = 
    if index >= length / 2 then true
    else 
      let left_child = 2 * index + 1 in
      let right_child = 2 * index + 2 in
      if arr.[index] <= arr.[left_child] 
         && (right_child >= length || arr.[index] <= arr.[right_child]) 
         && helper (left_child) length 
         && helper (right_child) length 
      then true 
      else false 
  in 
  if arr = [] then true 
  else helper 0 (List.length arr)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
