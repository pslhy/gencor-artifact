(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
let rec pancake_sort (nums : int list) : int list =
  if nums = [] then
    []
  else
    let n = List.length nums in
    let rec flip i =
      if i >= n then
        nums
      else
        (flip (i + 1), flip i)
    in
    let rec bubble_down i =
      if i >= n - 1 then
        nums
      else
        let j = flip (i + 1) in
        if nums <= j then
          nums
        else
          (bubble_down (i + 1), j)
    in
    bubble_down 0

