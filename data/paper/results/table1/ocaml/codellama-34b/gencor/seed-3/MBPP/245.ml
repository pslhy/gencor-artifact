
let rec max_sum (arr : int list) : int =
  if List.length arr <= 1 then
    List.hd arr
  else
    let (left, right) = List.split arr (List.length arr / 2) in
    let left_sum = max_sum left in
    let right_sum = max_sum right in
    let cross_sum = List.fold_left (fun acc x ->
      let (a, b) = List.fold_left (fun (a, b) y -> (max a y, min b y)) (x, x) left in
      max acc (a + b)
    ) 0 right in
    max (max left_sum right_sum) cross_sum

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
