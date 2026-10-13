(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
let rec pancake_sort (nums : int list) : int list =
  if List.length nums <= 1 then
    nums
  else
    let flip n =
      let last = List.nth nums (List.length nums - n) in
      let rev = List.rev (List.take nums (List.length nums - n)) in
      last :: rev
    in
    let rec go (n : int) : int list =
      if n = 0 then
        nums
      else
        let new_n = n - 1 in
        let sorted_nums : int list =
          if List.nth nums n <= List.nth nums new_n then
            List.take nums new_n @ [List.nth nums new_n; List.nth nums n]
            @ List.drop nums (new_n + 1)
          else
            List.take nums n @ [List.nth nums n] @ List.drop nums (n + 1)
        in
        let sorted_flip_nums : int list =
          if List.nth nums n <= List.nth nums new_n then
            List.take nums new_n @ [List.nth nums n; List.nth nums new_n]
            @ List.drop nums (new_n + 1)
          else
            List.take nums n @ [List.nth nums n] @ List.drop nums (n + 1)
        in
        let max_flips = max (n + 1) (List.length nums - n) in
        let flip_nums = flip max_flips in
        let result : int list =
          if List.for_all2 (fun x y -> x <= y) sorted_nums sorted_flip_nums then
            sorted_nums
          else
            List.append (go new_n) [List.nth nums n]
        in
        result
    in
    go (List.length nums - 1)
    ;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:27: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec pancake_sort (nums : int list) : int list =
  if List.length nums <= 1 then
    nums
  else
    let flip n =
      let last = List.hd nums in
      let rev = List.rev (List.tl nums) in
      last :: rev
    in
    let rec go (n : int) : int list =
      if n = 0 then
        nums
      else
        let new_n = n - 1 in
        let sorted_nums : int list =
          if List.hd nums >= List.nth nums new_n then
            List.hd nums :: List.tl (List.nth nums new_n) @ (List.tl nums)
          else
            List.hd nums :: (List.tl nums)
        in
        let sorted_flip_nums : int list =
          if List.hd nums >= List.nth nums new_n then
            List.hd nums :: List.nth nums new_n :: List.tl (List.nth nums new_n)
            @ List.tl nums
          else
            List.hd nums :: List.tl nums
        in
        let max_flips = max (n + 1) (List.length nums - n) in
        let flip_nums = flip max_flips in
        let result =
          if List.for_all2 (fun x y -> x >= y) sorted_nums sorted_flip_nums then
            sorted_nums
          else
            List.append (go new_n) (List.hd nums)
        in
        result
    in
    go (List.length nums - 1)
    ;;

