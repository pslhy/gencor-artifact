
let rec pancake_sort (nums : int list) : int list =
  if List.length nums <= 1 then
    nums
  else
    let flip n =
      let last = List.nth nums (List.length nums - n) in
      let rev = List.rev (List.tl (List.rev (nums.[0..(List.length nums - n - 1)]))) in
      last :: rev
    in
    let rec sort_helper n =
      if n = 0 then
        List.tl (List.rev nums)
      else
        let curr = nums.[n+1] in
        if curr <= List.nth nums n then
          sort_helper (n - 1)
        else
          flip n |> sort_helper
    in
    sort_helper (List.length nums - 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
