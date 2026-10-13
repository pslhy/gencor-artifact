let rec check_min_heap (arr : int list) : bool =
  let len = List.length arr in
  let rec helper (index : int) : bool =
    if index >= len then true
    else
      let left = 2 * index + 1 in
      let right = 2 * index + 2 in
      if left < len && arr.[left] < arr.index then false
      else if right < len && arr.right < arr.index then false
      else helper left && helper right
  in
  helper 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
