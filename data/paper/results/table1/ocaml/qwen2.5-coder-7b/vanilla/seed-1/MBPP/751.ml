let rec check_min_heap (arr : int list) : bool = 
  let rec check (i : int) : bool = 
    let left = 2 * i + 1 in
    let right = 2 * i + 2 in
    if left >= List.length arr then true
    else if right >= List.length arr then
      arr.[i] <= arr.[left]
    else
      arr.[i] <= arr.[left] && arr.[i] <= arr.[right] && check left && check right
  in
  List.length arr > 0 && check 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
