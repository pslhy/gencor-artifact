
let rec odd_length_sum (arr : int list) : int = 
  let rec helper (acc : int) (idx : int) (n : int) : int =
    if idx >= n then acc
    else
      let rec sum_sublists (start : int) (sum : int) : int =
        if start >= n then sum
        else
          let sublist = List.tl (List.rev (List.tl (List.rev (List.tl arr)))) in
          sum_sublists (start + 1) (sum + (List.fold_left (fun a b -> a + b) 0 sublist))
      in
      helper acc (idx + 1) n
  in
  helper 0 0 (List.length arr)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd length sublists. https://www.geeksforgeeks.org/sum-of-all-odd-length-sublists/ *)
