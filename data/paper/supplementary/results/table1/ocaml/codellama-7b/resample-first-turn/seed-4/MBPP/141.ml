let rec pancake_sort (nums : int list) : int list =
  if List.length nums <= 1 then
    nums
  else
    let flip (nums : int list) (i : int) : int list =
      List.rev (List.rev (List.take i nums) @ List.drop (i + 1) nums)
    in
    let rec flip_and_sort (nums : int list) (shift : int) : int list =
      if shift == 0 then
        nums
      else
        let n = List.hd nums in
        let nums = flip nums n in
        let nums = flip_and_sort nums (shift - 1) in
        nums
    in
    flip_and_sort (nums @ [List.hd nums]) (List.length nums - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
