
let rec pancake_sort (nums : int list) : int list =
  if List.length nums <= 1 then
    nums
  else
    let flip (nums : int list) (i : int) : int list =
      List.rev (List.rev (List.tl nums) i) @ (List.nth nums i) :: List.rev (List.tl (List.tl nums) i)
    in
    let rec sort (nums : int list) (flip_nums : int list) (i : int) : int list =
      if i <= 0 then
        flip_nums
      else
        if List.mem (List.nth nums i) (flip_nums) then
          sort nums flip_nums (i - 1)
        else
          sort nums (flip nums i) (i - 1)
    in
    sort nums [] (List.length nums - 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
