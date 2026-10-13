
let rec check_min_heap (arr : int list) : bool = 
  let rec helper (index : int) : bool =
    if index >= Array.length (List.to_seq arr) then true
    else
      let leftChildIndex = 2 * index + 1 in
      let rightChildIndex = 2 * index + 2 in
      let isLeftValid = 
        if leftChildIndex >= Array.length (List.to_seq arr) then true
        else arr.(index) <= arr.(leftChildIndex) in
      let isRightValid =
        if rightChildIndex >= Array.length (List.to_seq arr) then true
        else arr.(index) <= arr.(rightChildIndex) in
      isLeftValid && isRightValid && helper (leftChildIndex) && helper (rightChildIndex)
  in
  match arr with
  | [] | [_] -> true
  | _ -> helper 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
