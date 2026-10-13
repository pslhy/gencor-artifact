let rec heap_sort (iterable : int list) : int list = 
  let heap = List.fold_left (fun a b -> Heap.insert a b) EmptyHeap iterable in
  let rec pull heap result = match Heap.pop heap with
  | None -> result
  | Some (value, heap) -> pull heap (value :: result)
  in pull heap []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
