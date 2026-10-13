let rec check_min_heap (arr : int list) : bool =
  let length = List.length arr in
  let rec check_for i =
    if i < length then
      if 2*i+1 < length then (* check if current node has a left child *)
        if arr.[i] > arr.[2*i+1] then false (* left child is smaller than parent *)
        else if 2*i+2 < length then (* check if current node has a right child *)
          if arr.[i] > arr.[2*i+2] then false (* right child is smaller than parent *)
          else check_for (i+1) (* continue with the next node *)
        else check_for (i+1) (* no right child, continue with the next node *)
      else check_for (i+1) (* no left child, continue with the next node *)
    else true (* all nodes have been checked and they are all smaller than their children *)
  in
  check_for 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
