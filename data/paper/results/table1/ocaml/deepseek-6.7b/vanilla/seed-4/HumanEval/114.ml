let rec minSubArraySum (nums : int list) : int =
  let len = List.length nums in
  if len = 0 then 0
  else
    let rec loop (i : int) (j : int) (sum : int) (min_sum : int) = 
      if i < len then
        if j < len then loop i (j + 1) (sum + List.nth nums j) (min min_sum (sum + List.nth nums j))
        else loop (i + 1) (i + 2) (sum - List.nth nums i) (min min_sum (sum - List.nth nums i))
      else min_sum
    in
    loop 0 0 0 (List.fold_left (fun a b -> a + b) 0 nums)

let _ = print_int (minSubArraySum [2; 3; 4; 1; 2; 4])
let _ = print_newline ()
let _ = print_int (minSubArraySum [(-1); (-2); (-3)])
let _ = print_newline ()


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of integers nums, find the minimum sum of any non-empty sub-list *)
(*     of nums. *)
(*     Example *)
(*     >>> minSubArraySum [2; 3; 4; 1; 2; 4] *)
(*     1 *)
(*     >>> minSubArraySum [(-1); (-2); (-3)] *)
(*     (-6) *)
