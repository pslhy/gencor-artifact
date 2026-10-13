let rec max_sub_array_sum (a : int list) (size : int) : int =
  match size with
  | 0 -> 0
  | _ ->
    let rec find_max (prev : int) (curr : int) (i : int) : int =
      if i >= size then curr
      else 
        let t = max (prev + List.nth a i) (List.nth a i) in
        find_max (t - List.nth a i) (max curr t) (i + 1) in
    find_max a.(0) 0 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
