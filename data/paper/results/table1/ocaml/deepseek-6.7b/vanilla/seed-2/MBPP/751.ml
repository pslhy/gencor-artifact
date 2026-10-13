let rec check_min_heap (arr : int list) : bool =
  let len = List.length arr in
  let rec helper i =
    (* Base Case *)
    if i >= len then true else
    (* Compute the index of left and right children *)
    let left = 2 * i + 1 in
    let right = 2 * i + 2 in
    (* Return false if the min heap property is violated *)
    if (left < len && arr.[i] > arr.[left]) || (right < len && arr.[i] > arr.[right]) then false else
    (* Recursively check the left and right sub trees *)
    helper left && helper right
  in
  helper 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
