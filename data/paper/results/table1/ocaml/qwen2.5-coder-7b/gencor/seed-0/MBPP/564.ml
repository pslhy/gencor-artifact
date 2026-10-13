
let rec count_Pairs (arr : int list) (n : int) : int = 
  if n <= 1 then 0
  else
    let count = List.fold_left (fun acc x -> acc + (List.length (List.filter (fun y -> x <> y) arr))) 0 arr in
    count + count_Pairs (List.tl arr) (n - 1)

let count_UnorderedPairs (arr : int list) : int =
  let len = List.length arr in
  count_Pairs arr len

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list of integers and counts the number of possible unordered pairs where both elements are unequal. *)
