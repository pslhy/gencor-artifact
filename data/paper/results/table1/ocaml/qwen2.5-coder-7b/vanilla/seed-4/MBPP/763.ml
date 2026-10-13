let rec find_min_diff (arr : int list) (n : int) : int = 
  if n < 2 then
    -1
  else
    let rec inner_loop (i : int) (min_diff : int) : int =
      if i = n then
        min_diff
      else
        let rec inner_inner_loop (j : int) (current_min_diff : int) : int =
          if j = n then
            current_min_diff
          else
            if i <> j then
              let diff = abs (arr.(i) - arr.(j)) in
              inner_inner_loop (j + 1) (min current_min_diff diff)
            else
              inner_inner_loop (j + 1) current_min_diff
        in
        inner_loop (i + 1) (inner_inner_loop (i + 1) (min_diff))
    in
    inner_loop 0 (max_int)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
